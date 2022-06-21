import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/bill_and_payment_controller.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/payment_in_room.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/payments_in_reception.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/waiting_order_payment_widget.dart';
import 'package:get/get.dart';

class PaymentSelection extends StatefulWidget {

  const PaymentSelection({Key? key}) : super(key: key);

  @override
  _PaymentSelectionState createState() => _PaymentSelectionState();
}

class _PaymentSelectionState extends State<PaymentSelection> {

  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  @override
  Widget build(BuildContext context) {

    return Obx(() => controller.orderBillStatus.value.paymentRequestedInRoom == 0 ? const WaitingOrderPaymentWidget() :
    controller.orderBillStatus.value.paymentRequestedInRoom == 1 ?  const PaymentInRoom() : const PaymentInReception());
  }
}