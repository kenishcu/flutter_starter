import 'package:flutter/material.dart';
import 'package:itrapp/controllers/bill_and_payment_controller.dart';
import 'package:get/get.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

class WaitingPaymentWidget extends StatefulWidget {

  const WaitingPaymentWidget({Key? key, required this.title}) : super(key: key);

  final String? title;
  @override
  _WaitingPaymentWidgetState createState() => _WaitingPaymentWidgetState();
}

class _WaitingPaymentWidgetState extends State<WaitingPaymentWidget> with TickerProviderStateMixin {

  late AnimationController controller;

  BillAndPaymentController billAndPaymentController =  Get.find<BillAndPaymentController>();

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
                  child: Text("${AppLocalizations.of(context).getTranslate('payment_by')} ${widget.title}",  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
            SizedBox(
              height: 120,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(AppLocalizations.of(context).getTranslate('received_your_payment_request'),  style: const TextStyle(
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
              ),)),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        await billAndPaymentController.resetPayment();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              child: IconButton(
                                padding: const EdgeInsets.all(0.0),
                                icon: const Icon(Icons.arrow_back_ios, size: 30, color: Colors.black),
                                tooltip: 'Increase',
                                onPressed: () async {
                                  await billAndPaymentController.resetPayment();
                                },
                              )
                          ),
                          SizedBox(
                            height: 40,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(AppLocalizations.of(context).getTranslate('back'), style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }



}