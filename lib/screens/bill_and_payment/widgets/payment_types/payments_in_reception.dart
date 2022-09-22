import 'package:flutter/material.dart';
import 'package:itrapp/controllers/bill_and_payment_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/waiting_payment_widget.dart';
import 'package:get/get.dart';

class PaymentInReception extends StatefulWidget {

  const PaymentInReception({Key? key}) : super(key: key);

  @override
  _PaymentInReceptionState createState() =>  _PaymentInReceptionState();
}

class _PaymentInReceptionState extends State<PaymentInReception>  {

  BillAndPaymentController  controller = Get.find<BillAndPaymentController>();

  Widget _payment() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            SizedBox(
              height: 40,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(AppLocalizations.of(context).getTranslate('pay_at_the_counter'),  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
            SizedBox(
              height: 120,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(AppLocalizations.of(context).getTranslate('your_request_is_being_confirmed'),  style: const TextStyle(
                    fontSize: 16,
                  ))
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _payment();
  }
}