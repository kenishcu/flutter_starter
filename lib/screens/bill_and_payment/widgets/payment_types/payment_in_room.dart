import 'package:flutter/material.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/waiting_payment_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../controllers/bill_and_payment_controller.dart';
import '../../../../routes/app_pages.dart';

class PaymentInRoom extends StatefulWidget {

  const PaymentInRoom({Key? key}) : super(key: key);

  @override
  _PaymentInRoomState createState() => _PaymentInRoomState();
}

class _PaymentInRoomState extends State<PaymentInRoom> {

  int? _value = 0;

  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  late FToast fToast;

  late String _timeString;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
    _timeString = _formatDateTime(DateTime.now());
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }

  _showToastSuccess() {
    Widget toast = Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 1,
            child: Icon(Icons.payment, size: 28, color: Theme.of(context).colorScheme.secondary),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 20,
                      child: Text("Yêu cầu thanh toán thành công", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      )),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Hệ thống đá nhận được yêu cầu", style: TextStyle(
                          fontSize: 12
                      )),
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
            child: Text(_timeString),
          )
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP_LEFT,
      toastDuration: const Duration(seconds: 4),
    );
  }

  _showToastError() {

    Widget toast = Container(
      height: 80,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(Icons.payment, size: 28, color: Colors.white),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 20,
                      child: Text("Yêu cầu thanh toán không thành công", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white
                      )),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text("Lỗi hệ thống", style: TextStyle(
                          fontSize: 12,
                          color: Colors.white
                      )),
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
            child: Text(_timeString, style: const TextStyle(
                color: Colors.white
            ),),
          )
          ,
        ],
      ),
    );


    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP_LEFT,
      toastDuration: const Duration(seconds: 4),
    );
  }

  Widget _paymentByDigitalWallet (BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 55,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      controller.setSelectedDigitalWallet(0);
                    },
                    child: Container(
                      decoration: controller.selectedDigitalWallet.value == 0 ? BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.secondary,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondaryVariant,
                              width: 4
                          )
                      ) : BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Image.asset("assets/img/momo_logo.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: 150,
                  child: InkWell(
                    onTap: () {
                      controller.setSelectedDigitalWallet(1);
                    },
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: controller.selectedDigitalWallet.value == 1 ? BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondaryVariant,
                              width: 4
                          )
                      ): BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white
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
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: controller.selectedDigitalWallet.value == 0 ? Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondary
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
                          child: Image.asset("assets/img/momo_logo.png"),
                        ),
                        Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 15.0),
                              padding: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: QrImage(
                                data: 'This QR code has an embedded image as well',
                                version: QrVersions.auto,
                                size: 320,
                                gapless: false,
                                embeddedImage: const AssetImage('assets/images/my_embedded_image.png'),
                                embeddedImageStyle: QrEmbeddedImageStyle(
                                  size: const Size(80, 80),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ) : Align(
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
                              child: QrImage(
                                data: 'This QR code has an embedded image as well',
                                version: QrVersions.auto,
                                size: 320,
                                gapless: false,
                                embeddedImage: const AssetImage('assets/images/my_embedded_image.png'),
                                embeddedImageStyle: QrEmbeddedImageStyle(
                                  size: const Size(80, 80),
                                ),
                              ),
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
                    onPressed: () {
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
                              onPressed: () {
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
                Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const SizedBox(
                      height: 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Tiếp", style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _paymentSelectionType() {
    return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Chọn hình thức thanh toán",  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: controller.payments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 15.0),
                        height: 60,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            controller.setSelectedPayment(index);
                            setState(() {
                              _value = index;
                            });
                          },
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).colorScheme.onSurface
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                  child: Radio(
                                    value: index,
                                    groupValue: _value,
                                    fillColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                          return Theme.of(context).colorScheme.secondary;
                                        }),
                                    onChanged: (int? value) {
                                      controller.setSelectedPayment(value!);
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                      controller.payments[index].paymentTypeName!
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        controller.setSelectedPaymentInRoomType(_value!);
                        final res = await controller.sendPayment();
                        if (res) {
                          // toast success
                          _showToastSuccess();
                          controller.initBillAndPayment();
                          Get.off(Routes.HOME);
                        } else {
                          // toast error
                          _showToastError();
                        }
                      },
                      child: const SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Xác nhận", style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
  
  Widget _paymentSelection (BuildContext context) {
    return controller.selectedPaymentInRoomType.value == 4 ? _paymentSelectionType() :
    controller.selectedPaymentInRoomType.value == 0 ? const WaitingPaymentWidget(title: 'tiền mặt') :
    controller.selectedPaymentInRoomType.value == 1 ?  const WaitingPaymentWidget(title: 'thẻ') :
    _paymentByDigitalWallet(context);
  }

  @override
  Widget build(BuildContext context) {
    return controller.orderBillStatus.value.paymentTypeRequestedInRoom == "Tại phòng" ? _paymentSelection(context) :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CASH" ? const WaitingPaymentWidget(title: 'tiền mặt') :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CREDIT" ? const WaitingPaymentWidget(title: 'thẻ') :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "MOMO" ? const WaitingPaymentWidget(title: 'Ví điện tử MoMo') :
    const WaitingPaymentWidget(title: 'Ví điện tử VnPay');
  }
}