import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/bill_and_payment_controller.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class WaitingOrderPaymentWidget extends StatefulWidget {

  const WaitingOrderPaymentWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WaitingOrderPaymentWidgetState createState() => _WaitingOrderPaymentWidgetState();
}

class _WaitingOrderPaymentWidgetState extends State<WaitingOrderPaymentWidget> with TickerProviderStateMixin {

  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Thanh toán ${widget.title}",  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
            const SizedBox(
              height: 120,
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Yêu cầu của quý khách đang được xử lý. Quý khách vui lòng đợi trong giây lát",  style: TextStyle(
                    fontSize: 16,
                  ))
              ),
            ),
            Expanded(child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  value: controller.value,
                  strokeWidth: 10.0,
                  color: Theme.of(context).colorScheme.onPrimary,
                  semanticsLabel: 'Linear progress indicator',
                ),
              ),))
          ],
        ),
      ),
    );
  }



}