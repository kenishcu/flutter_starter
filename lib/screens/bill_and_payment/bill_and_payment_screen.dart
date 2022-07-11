import 'package:flutter/material.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/bill_widget.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_widget.dart';

import '../../layout/main_layout.dart';

class BillAndPaymentScreen extends StatefulWidget {

  const BillAndPaymentScreen({Key? key}) : super(key: key);

  @override
  _BillAndPaymentScreenState createState() =>  _BillAndPaymentScreenState();
}

class _BillAndPaymentScreenState extends State<BillAndPaymentScreen> {

  Widget _childLeftContent() {
    return const BillWidget();
  }

  Widget _childRightContent() {
    return const PaymentWidget();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      childLeftContent: _childLeftContent(),
      childRightContent: _childRightContent(),
    );
  }
}