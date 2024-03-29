import 'package:flutter/material.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/payment_by_digital_wallet_momo.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/payment_by_digital_wallet_vnpay.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/payment_success_widget.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/payments_in_reception.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/waiting_order_payment_widget.dart';
import 'package:itrapp/screens/bill_and_payment/widgets/payment_types/waiting_payment_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../controllers/bill_and_payment_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/convert.dart';

class PaymentWidget extends StatefulWidget {

  const PaymentWidget({Key? key}) : super(key: key);

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {

  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  int? _value = 0;

  late FToast fToast;

  late String _timeString;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
    _timeString = _formatDateTime(DateTime.now());
  }

  @override
  void dispose() {
    super.dispose();
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm').format(dateTime);
  }

  _showToastSuccess() {
    Widget toast = Container(
      height: 90,
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
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(AppLocalizations.of(context).getTranslate('payment_request_successful'), style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      )),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text(AppLocalizations.of(context).getTranslate('the_system_has_received_the_request'), style: const TextStyle(
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
      height: 90,
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
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(AppLocalizations.of(context).getTranslate('payment_request_failed'), style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white
                      )),
                    ),
                    SizedBox(
                      height: 30,
                      child: Text(AppLocalizations.of(context).getTranslate('system_error'), style: const TextStyle(
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
          SizedBox(
            height: 40,
            child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(AppLocalizations.of(context).getTranslate('bill_summary'),  style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          Expanded(
              child: Container(
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
                                child: Text("${AppLocalizations.of(context).getTranslate('total_bill')} ${index + 1}  : ${formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].finalPrice!)}", style: const TextStyle(
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
                          text: '${AppLocalizations.of(context).getTranslate('total_of_all_bills')}: ',
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
        ],
      ),
    );
  }

  Widget _payment(BuildContext context) {
    return controller.orderBillStatus.value.paymentRequestedInRoom == 0 ? Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
            child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(AppLocalizations.of(context).getTranslate('choose_payment_method'),  style: const TextStyle(
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
                          color: controller.selectedPaymentType.value == 0 ? Theme.of(context).colorScheme.secondary : Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: controller.selectedPaymentType.value == 0 ? Border.all(
                              color: Theme.of(context).colorScheme.secondaryContainer,
                              width: 4
                          ): Border.all(
                              color: Colors.grey,
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
                        child: Center(
                          child: Text(AppLocalizations.of(context).getTranslate('in_room'), style: TextStyle(
                              color: controller.selectedPaymentType.value == 0 ? Colors.white : Colors.black
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
                        color: controller.selectedPaymentType.value == 1 ? Theme.of(context).colorScheme.secondary : Colors.white,
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
                        child: Center(
                          child: Text(AppLocalizations.of(context).getTranslate('at_the_front_desk'), style: TextStyle(
                            color: controller.selectedPaymentType.value == 1 ? Colors.white : Colors.black,
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
                        Get.offAndToNamed(Routes.HOME);
                      } else {
                        // toast error
                        _showToastError();
                      }
                    },
                    child: SizedBox(
                      height: 40,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(AppLocalizations.of(context).getTranslate('next'), style: const TextStyle(
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
    ) :
    controller.orderBillStatus.value.paymentRequestedInRoom == 1 ? const WaitingOrderPaymentWidget(title: "Tại giường") :  controller.orderBillStatus.value.paymentRequestedInRoom == 2 ? const WaitingOrderPaymentWidget(title: "Tại quầy") :
    controller.orderBillStatus.value.paymentRequestedInRoom == 1 ? controller.orderBillStatus.value.paymentTypeRequestedInRoom == "Tại phòng" ? _paymentSelection(context) :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CASH" ? const WaitingPaymentWidget(title: 'tiền mặt') :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CREDIT" ? const WaitingPaymentWidget(title: 'thẻ') :
    controller.orderBillStatus.value.paymentTypeRequestedInRoom == "MOMO" ? const WaitingPaymentWidget(title: 'Ví điện tử MoMo') :
    const WaitingPaymentWidget(title: 'Ví điện tử VnPay') : const PaymentInReception();
  }

  Widget _paymentSelection (BuildContext context) {
    return controller.selectedPaymentInRoomType.value == 4 ? _paymentSelectionType() :
    controller.selectedPaymentInRoomType.value == 0 ? const WaitingPaymentWidget(title: 'tiền mặt') :
    controller.selectedPaymentInRoomType.value == 1 ?  const WaitingPaymentWidget(title: 'thẻ') :
    controller.selectedPaymentInRoomType.value == 2 ? const PaymentByDigitalWalletMoMo() :
    const PaymentByDigitalWalletVnPay();
  }


  Widget _paymentSelectionType() {
    return SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(AppLocalizations.of(context).getTranslate('choose_payment_method'),  style: const TextStyle(
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
                                      Localizations.localeOf(context).languageCode == 'en' ? controller.payments[index].paymentTypeNameEN! : controller.payments[index].paymentTypeName!
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
                        await controller.setSelectedPaymentInRoomType(_value!);
                        final res = await controller.sendPayment();
                        if (res) {
                          // toast success
                          _showToastSuccess();
                          controller.initBillAndPayment();
                        } else {
                          // toast error
                          _showToastError();
                        }
                      },
                      child: SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(AppLocalizations.of(context).getTranslate('confirm'), style: const TextStyle(
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

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        Expanded(
            flex: 1,
            child: _totalBill(context)
        ),
        Expanded(
            flex: 2,
            child: Obx(() => controller.myTabs.isEmpty ? _payment(context) :
            controller.myTabs[0].paymentStatus == 1 ? const PaymentSuccessWidget() : controller.orderBillStatus.value.paymentRequestedInRoom == 0 ? _payment(context) :
            controller.orderBillStatus.value.paymentRequestedInRoom == 1 ? (controller.orderBillStatus.value.paymentTypeRequestedInRoom == "Tại phòng" ? _paymentSelection(context) :
            controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CASH" ? const WaitingPaymentWidget(title: 'tiền mặt') :
            controller.orderBillStatus.value.paymentTypeRequestedInRoom == "CREDIT" ? const WaitingPaymentWidget(title: 'thẻ') :
            controller.orderBillStatus.value.paymentTypeRequestedInRoom == "MOMO" ? const PaymentByDigitalWalletMoMo() :
            const PaymentByDigitalWalletVnPay()) : const PaymentInReception()
        ))
      ],
    ));
  }

}

