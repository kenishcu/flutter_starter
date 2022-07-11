import 'package:itrapp/adapters/repository/bill_and_payment/bill_and_payment_repository.dart';
import 'package:itrapp/controllers/app_controller.dart';
import 'package:itrapp/models/bill_and_payment/bill_model.dart';
import 'package:itrapp/models/bill_and_payment/bill_type_model.dart';
import 'package:itrapp/models/bill_and_payment/payment_type_model.dart';
import 'package:itrapp/models/bill_and_payment/vnpay_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

import '../adapters/repository/home/receipt_repositiry.dart';
import '../models/home/bill_and_payment/bill_and_payment_model.dart';
import 'home_controller.dart';

class BillAndPaymentController extends GetxController {

  final GetStorage box;
  final BillAndPaymentRepository billAndPaymentRepository;

  BillAndPaymentController({
    required this.box,
    required this.billAndPaymentRepository
  });

  RxBool initScreen = false.obs;
  RxInt selectedTab = 0.obs;
  RxInt selectedDigitalWallet = 0.obs;
  RxInt totalPrice = 0.obs;
  RxInt selectedPaymentType = 0.obs;

  RxInt selectedPaymentInRoomType = 0.obs;

  RxBool isBillPayment = false.obs;

  RxString base64VnPay = ''.obs;

  RxString linkMoMo = ''.obs;

  List<BillAndPaymentModel> billAndPaymentInfo = <BillAndPaymentModel>[].obs;

  Rx<BillTypeModel> orderBillStatus = BillTypeModel().obs;

  List<PaymentTypeModel> payments = [
    PaymentTypeModel(
      paymentTypeId: '0',
      paymentTypeCode: "CASH",
      paymentTypeName: "Thanh toán bằng tiền mặt"
    ),
    PaymentTypeModel(
        paymentTypeId: '1',
        paymentTypeCode: "DEBIT",
        paymentTypeName: "Thanh toán bằng thẻ tín dụng"
    ),
    PaymentTypeModel(
        paymentTypeId: '2',
        paymentTypeCode: "MOMO",
        paymentTypeName: "Thanh toán bằng ví điện tử (MoMo)"
    ),
    PaymentTypeModel(
        paymentTypeId: '4',
        paymentTypeCode: "VNPAY",
        paymentTypeName: "Thanh toán bằng ví điện tử (VnPay)"
    )
  ];

  @override
  void onInit() {
    super.onInit();
  }


  List<BillModel> myTabs = <BillModel>[].obs;

  Future initBillAndPayment() async {

    final controller = Get.find<HomeController>();

    final appController = Get.find<AppController>();

    print('momo config: ${appController.momoConfig.value}');
    print('vnpay config: ${appController.vnpayConfig.value}');

    // get bills
    final res = await billAndPaymentRepository.getBills(controller.patientInfo.patientId, controller.patientInfo.receptionQueueId);

    if (res.status == true) {
      myTabs = [];
      if(res.results!.length > 0) {
        for(var element in res.results) {
          myTabs.add(BillModel.fromJson(element));
        }
      }
      int total = 0;
      for(var e in myTabs) {
        total = total + e.finalPrice!;
      }
      totalPrice.value = total;
    } else {
      myTabs = [];
      totalPrice.value = 0;
    }

    // get services
    final resData = await billAndPaymentRepository.getBillAndPayment(controller.patientInfo.patientId, controller.patientInfo.receptionQueueId);
    if(resData.status ==  true) {
      billAndPaymentInfo.clear();
      resData.results.forEach(
              (e) => {
                billAndPaymentInfo.add(BillAndPaymentModel.fromJson(e))
          }
      );
    }

    // get current order payment state
    final resPaymentStatus = await billAndPaymentRepository.getBillAndPaymentStatus(controller.patientInfo.patientId, controller.patientInfo.receptionQueueId);
    if (resPaymentStatus.status == true) {
      orderBillStatus.value = BillTypeModel.fromJson(resPaymentStatus.results);
    }
    if (orderBillStatus.value.paymentTypeRequestedInRoom == "Tại phòng") {
      selectedPaymentInRoomType.value = 4;
    } else if (orderBillStatus.value.paymentTypeRequestedInRoom == "CASH") {
      selectedPaymentInRoomType.value = 0;
    } else if (orderBillStatus.value.paymentTypeRequestedInRoom == "CREDIT") {
      selectedPaymentInRoomType.value = 1;
    } else if (orderBillStatus.value.paymentTypeRequestedInRoom == "MOMO") {
      selectedPaymentInRoomType.value = 2;
      await getLinkMoMo();
    } else if (orderBillStatus.value.paymentTypeRequestedInRoom == "VNPAY") {
      selectedPaymentInRoomType.value = 3;
      await getVnPayQr();
    }
    initScreen.value = true;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }

  void setSelectedPayment(int i) {
    selectedPaymentType.value = i;
  }

  Future setSelectedPaymentInRoomType(int i) async {
    selectedPaymentInRoomType.value = i;
    if(i == 3) {
      await getVnPayQr();
    } else if(i == 4) {
      await getLinkMoMo();
    }
  }

  void setSelectedDigitalWallet (int index) {
      selectedDigitalWallet.value = index;
  }

  Future<bool> sendPayment() async {

    final controller = Get.find<HomeController>();

    BillTypeModel billType;

    if(selectedPaymentInRoomType.value == 0) {
      billType = BillTypeModel(
        patientId: controller.patientInfo.patientId,
        receptionQueueId:  controller.patientInfo.receptionQueueId,
        paymentRequestedInRoom: 1,
        paymentTypeRequestedInRoom: "CASH",
      );
    } else if (selectedPaymentInRoomType.value == 1) {
      billType = BillTypeModel(
        patientId: controller.patientInfo.patientId,
        receptionQueueId:  controller.patientInfo.receptionQueueId,
        paymentRequestedInRoom: 1,
        paymentTypeRequestedInRoom: "CREDIT",
      );
    } else if (selectedPaymentInRoomType.value == 2) {
      billType = BillTypeModel(
        patientId: controller.patientInfo.patientId,
        receptionQueueId:  controller.patientInfo.receptionQueueId,
        paymentRequestedInRoom: 1,
        paymentTypeRequestedInRoom: "MOMO",
      );
    } else {
      billType = BillTypeModel(
        patientId: controller.patientInfo.patientId,
        receptionQueueId:  controller.patientInfo.receptionQueueId,
        paymentRequestedInRoom: 1,
        paymentTypeRequestedInRoom: "VNPAY",
      );
    }

    final res = await billAndPaymentRepository.sendBillAndPayment(billType.toJson());
    if(res.status == true) {
      return true;
    } else {
      return false;
    }

  }

  Future<bool> sendRequestPayment() async {

    final controller = Get.find<HomeController>();

    BillTypeModel billType;
    if(selectedPaymentType.value == 0) {
      billType = BillTypeModel(
        patientId: controller.patientInfo.patientId,
        receptionQueueId:  controller.patientInfo.receptionQueueId,
        paymentRequestedInRoom: 1,
        paymentTypeRequestedInRoom: "Tại phòng",
      );
    } else {
      billType = BillTypeModel(
        patientId: controller.patientInfo.patientId,
        receptionQueueId:  controller.patientInfo.receptionQueueId,
        paymentRequestedInRoom: 2,
        paymentTypeRequestedInRoom: "Tại quầy",
      );
    }
    final res = await billAndPaymentRepository.sendBillAndPayment(billType.toJson());
    if(res.status == true) {
      return true;
    } else {
      return false;
    }
  }

  Future resetPayment () async {

    final controller = Get.find<HomeController>();

    BillTypeModel billType;

    billType = BillTypeModel(
      patientId: controller.patientInfo.patientId,
      receptionQueueId:  controller.patientInfo.receptionQueueId,
      paymentRequestedInRoom: 1,
      paymentTypeRequestedInRoom: "Tại phòng",
    );
    final res = await billAndPaymentRepository.sendBillAndPayment(billType.toJson());
    selectedPaymentInRoomType.value = 4;
    await initBillAndPayment();
  }

  Future getVnPayQr () async {
    AppController appController = Get.find<AppController>();
    BillModel bill = myTabs[0];
    VnPayModel vnPayModel = VnPayModel(
      partnerCode: "",
      partnerRefId: bill.id,
      ipAddress: appController.vnpayConfig.value.ipAddress,
      vendor: "VNPAY",
      amount: bill.finalPrice.toString(),
      partnerRefCode: bill.receiptIndex
    );
    print('qr vnpay info ${vnPayModel.toJson()}');
    final res = await billAndPaymentRepository.getImageQrVnPay(vnPayModel.toJson());

    if(res.status == true) {
        base64VnPay.value = res.results;
    } else {
        base64VnPay.value = '';
    }
  }

  Future getLinkMoMo () async {
    AppController appController = Get.find<AppController>();
    BillModel bill = myTabs[0];
    var hash = "storeSlug=" + appController.momoConfig.value.merchantCode! + "-" + appController.momoConfig.value.merchantName!
        +"&amount=" + bill.finalPrice.toString() + "&billId=" + bill.id.toString();
    final keyBytes = utf8.encode(appController.momoConfig.value.key!);
    final bytes = utf8.encode(hash);
    final hmac =  Hmac(sha256, keyBytes).convert(bytes);
    linkMoMo.value = appController.momoConfig.value.ipAddress! + '/pay/store/' +  appController.momoConfig.value.merchantCode! + "-" + appController.momoConfig.value.merchantName!  + '?a=' + bill.finalPrice.toString() + '&b=' +  bill.id.toString() + '&s=' + hmac.toString();

    print('link momo ${linkMoMo.value}');
  }
}