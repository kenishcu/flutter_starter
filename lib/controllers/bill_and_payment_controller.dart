import 'package:flutter_stater/adapters/repository/bill_and_payment/bill_and_payment_repository.dart';
import 'package:flutter_stater/models/bill_and_payment/payment_type_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../adapters/repository/home/receipt_repositiry.dart';

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
  Rx<PaymentTypeModel> selectedPayment = PaymentTypeModel().obs;

  List<PaymentTypeModel> payments = [
    PaymentTypeModel(
      paymentTypeId: '1',
      paymentTypeCode: "CASH",
      paymentTypeName: "Thanh toán bằng tiền mặt"
    ),
    PaymentTypeModel(
        paymentTypeId: '2',
        paymentTypeCode: "DEBIT",
        paymentTypeName: "Thanh toán bằng thẻ tín dụng"
    ),
    PaymentTypeModel(
        paymentTypeId: '3',
        paymentTypeCode: "DIGITAL_WALLET",
        paymentTypeName: "Thanh toán bằng ví điện tử"
    )
  ];

  @override
  void onInit() {
    super.onInit();
  }


  List<String> myTabs = <String>[].obs;

  Future initBillAndPayment() async {

    myTabs = ['Hoá đơn 1', 'Hoá đơn 2'];

    initScreen.value = true;
  }

  void setSelectedTab(int tab) {
    selectedTab.value = tab;
  }

  void setSelectedDigitalWallet (int index) {
      selectedDigitalWallet.value = index;
  }

  void setSelectedPaymentType(int index) {
    if(index != 3) {
      selectedPayment.value = payments[index];
    } else {
      selectedPayment.value = PaymentTypeModel(
          paymentTypeId: '',
          paymentTypeCode: "",
          paymentTypeName: ""
      );
    }
  }
}