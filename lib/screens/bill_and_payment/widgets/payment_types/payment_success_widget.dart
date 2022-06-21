import 'package:flutter/material.dart';

class PaymentSuccessWidget extends StatelessWidget{

  const PaymentSuccessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget> [
            SizedBox(
              height: 40,
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Hoá đơn của quý khách đã được thanh toán thành công",  style: TextStyle(
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