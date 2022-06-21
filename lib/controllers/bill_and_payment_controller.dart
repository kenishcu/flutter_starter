import 'package:flutter_stater/adapters/repository/bill_and_payment/bill_and_payment_repository.dart';
import 'package:flutter_stater/models/bill_and_payment/bill_model.dart';
import 'package:flutter_stater/models/bill_and_payment/bill_type_model.dart';
import 'package:flutter_stater/models/bill_and_payment/payment_type_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
        paymentTypeCode: "DIGITAL_WALLET",
        paymentTypeName: "Thanh toán bằng ví điện tử"
    )
  ];

  @override
  void onInit() {
    super.onInit();
  }


  List<BillModel> myTabs = <BillModel>[].obs;

  Future initBillAndPayment() async {

    final controller = Get.find<HomeController>();

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
    initScreen.value = true;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }

  void setSelectedPayment(int i) {
    selectedPaymentType.value = i;
  }

  void setSelectedPaymentInRoomType(int i) {
    selectedPaymentInRoomType.value = i;
  }

  void setSelectedDigitalWallet (int index) {
      selectedDigitalWallet.value = index;
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
}