import 'package:flutter/material.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/payment_in_room.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/payment_selection.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/payment_success_widget.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/payments_in_reception.dart';
import 'package:flutter_stater/screens/bill_and_payment/widgets/payment_types/waiting_payment_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../controllers/bill_and_payment_controller.dart';
import '../../../utils/convert.dart';

class PaymentWidget extends StatefulWidget {

  const PaymentWidget({Key? key}) : super(key: key);

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {

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

  Widget _totalBill(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
            child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Tổng kết hoá đơn",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          Expanded(
              child: Obx(() => Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).colorScheme.onSurface
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: ListView.builder(
                          itemCount: controller.myTabs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 30,
                              width: double.infinity,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Tổng hoá đơn ${controller.selectedTab.value + 1}  : ${formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].finalPrice!)}", style: const TextStyle(
                                    fontWeight: FontWeight.w600
                                )),
                              ),
                            );
                          },
                        )
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: RichText(
                        text: TextSpan(
                          text: 'Tổng tất cả hoá đơn: ',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black
                          ),
                          children: <TextSpan>[
                            TextSpan(text: formatPriceNoSymbol(controller.totalPrice.value), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
          )
        ],
      ),
    );
  }

  Widget _payment(BuildContext context) {
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
                child: Text("Chọn hình thức thanh toán",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          SizedBox(
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 140,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10.0),
                      border: controller.selectedPaymentType.value == 0 ? Border.all(
                          color: Theme.of(context).colorScheme.secondaryContainer,
                          width: 4
                      ): Border.all(
                          color: Colors.white,
                          width: 4
                      )
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.setSelectedPayment(0);
                      },
                      onDoubleTap: () {
                        controller.setSelectedPayment(0);
                      },
                      child: const Center(
                        child: Text("Tại giường", style: TextStyle(
                            color: Colors.white
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: controller.selectedPaymentType.value == 1 ? Border.all(
                          color: Theme.of(context).colorScheme.secondaryContainer,
                          width: 4
                      ): Border.all(
                          color: Colors.grey,
                          width: 1
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.setSelectedPayment(1);
                      },
                      onDoubleTap: () {
                        controller.setSelectedPayment(1);
                      },
                      child: const Center(
                        child: Text("Tại quầy lễ tân", style: TextStyle(
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
          Expanded(
              child: Container()
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
                      final res = await controller.sendRequestPayment();
                      if (res) {
                        // toast success
                        _showToastSuccess();
                      } else {
                        // toast error
                        _showToastError();
                      }
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: _totalBill(context)
        ),
        Expanded(
          flex: 2,
          child: Obx(() => controller.myTabs.isEmpty ? _payment(context) :
              controller.myTabs[0].paymentStatus == 1 ? const PaymentSuccessWidget() : const PaymentSelection()
          )
        )
      ],
    );
  }

}

