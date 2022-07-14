import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../controllers/bill_and_payment_controller.dart';
import 'in_processing.dart';

class PaymentByDigitalWalletVnPay extends StatefulWidget {

  const PaymentByDigitalWalletVnPay({Key? key}) : super(key: key);

  @override
  _PaymentByDigitalWalletVnPayState createState() => _PaymentByDigitalWalletVnPayState();
}

class _PaymentByDigitalWalletVnPayState extends State<PaymentByDigitalWalletVnPay> {

  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String));
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 40,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Thanh toán bằng ví điện tử",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 55,
                    width: 150,
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondaryVariant,
                              width: 4
                          )
                      ),
                      child: SizedBox(
                        height: 40,
                        width: 80,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.center,
                          child: Image.asset("assets/img/vnpay.png",
                              fit: BoxFit.contain,
                              width: 100),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    width: 180,
                    height: 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: SizedBox(
                            height: 40,
                            width: 80,
                            child: Container(
                              height: double.infinity,
                              alignment: Alignment.center,
                              child: Image.asset("assets/img/vnpay.png",
                                  fit: BoxFit.contain,
                                  width: 100),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 15.0),
                              padding: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Obx(() => controller.base64VnPay.value.isNotEmpty ? imageFromBase64String( controller.base64VnPay.value) : const Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: InProcessing(),
                              )),
                            ))
                      ],
                    ),
                  ),
                ),
              )
          ),
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
                      await controller.resetPayment();
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
                                await controller.resetPayment();
                              },
                            )
                        ),
                        const SizedBox(
                          height: 40,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Quay lại", style: TextStyle(
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
    );
  }
}