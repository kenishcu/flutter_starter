import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';

class PaymentSuccessWidget extends StatelessWidget{

  const PaymentSuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
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
                  child: Text(AppLocalizations.of(context).getTranslate('your_invoice_has_been_successfully_paid'),  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
          ],
        ),
      ),
    );
  }

}