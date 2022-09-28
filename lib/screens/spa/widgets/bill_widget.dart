import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:itrapp/controllers/spa/product_spa_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/convert.dart';
import 'animated_item_widget.dart';

class BillWidget extends StatefulWidget {

  const BillWidget({Key? key, required this.listKey}): super (key: key);

  final GlobalKey<AnimatedListState> listKey;

  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {

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

  _showConfirmPrice(BuildContext context) {

    ProductSpaController controller = Get.find<ProductSpaController>();

    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text(AppLocalizations.of(context).getTranslate('order_confirmation')),
            content: SizedBox(
              height: 150,
              child: Obx(() => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                    child: Text(AppLocalizations.of(context).getTranslate('your_order_will_be_subject_to_an_additional')),
                  ),
                  Container(
                    height: 35,
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                          text: AppLocalizations.of(context).getTranslate('your_order_will_be_subject_to_an_additional'),
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20
                          ),
                          children: <TextSpan> [
                            TextSpan(text: " ${formatMoney(controller.total.value)}", style: const TextStyle(fontWeight: FontWeight.bold,  color: Colors.black54)),
                            TextSpan(text: " + ${formatMoneyWithRounded(((controller.total.value * 1.05) - controller.total.value).toInt())}", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)),
                            TextSpan(text: "  = ${formatMoneyWithRounded((controller.total.value * 1.05).toInt())}", style: TextStyle(fontWeight: FontWeight.bold, color:  Theme.of(context).colorScheme.secondary)),
                          ]
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 250,
                          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              hintText: AppLocalizations.of(context).getTranslate('total'),
                              border: InputBorder.none,
                              hintStyle: const TextStyle(
                                  fontSize: 15, decoration: TextDecoration.none, fontFamily: 'Roboto', fontWeight: FontWeight.w100
                              ),
                            ),
                            onChanged: (value) {
                              if(value == roundNumber((controller.total.value * 1.05).toInt()).toString()) {
                                controller.setDisableButton(false);
                              } else {
                                controller.setDisableButton(true);
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 250),
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: TextButton(
                            child: Text(AppLocalizations.of(context).getTranslate('close'), style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            )),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 120,
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: controller.isButtonDisabled.value ? Colors.grey : Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: TextButton(
                              child: Text(AppLocalizations.of(context).getTranslate('order'), style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              )),
                              onPressed: controller.isButtonDisabled.value ? null :  () async {
                                final res = await controller.order(widget.listKey);
                                if(res) {
                                  _showToastSuccess();
                                  Navigator.pop(context);
                                } else {
                                  Navigator.pop(context);
                                  _showToastError();
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ),
          );
        }
    );
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
            child: Icon(Icons.restaurant, size: 28, color: Theme.of(context).colorScheme.secondary),
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
                      child: Text(AppLocalizations.of(context).getTranslate('order_successfully'), style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                      )),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text(AppLocalizations.of(context).getTranslate('the_restaurant_has_taken_orders'), style: const TextStyle(
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
            child: Icon(Icons.restaurant, size: 28, color: Colors.white),
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
                      child: Text(AppLocalizations.of(context).getTranslate('order_not_successful'), style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white
                      )),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text(AppLocalizations.of(context).getTranslate('the_restaurant_had_not_received_order'), style: const TextStyle(
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
      toastDuration: Duration(seconds: 4),
    );
  }

  @override
  Widget build(BuildContext context) {

    ProductSpaController controller = Get.find<ProductSpaController>();

    return SizedBox(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Text(AppLocalizations.of(context).getTranslate('noted')),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              )
          ),
          Expanded(
              flex: 4,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child:  Text(AppLocalizations.of(context).getTranslate('cart')),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            child: Container(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: AnimatedItemWidget(listKey: widget.listKey)
                            ),
                          )
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 20, top: 10),
                                  child: Obx(() => Text('${AppLocalizations.of(context).getTranslate('total')} : ${formatPrice(controller.total.value)}'))),
                            ),
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: 120,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.secondaryVariant,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: TextButton(
                                        onPressed: () async {
                                          if (controller.total.value > 0) {
                                            controller.setDisableButton(true);
                                            _showConfirmPrice(context);
                                          }
                                        },
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const SizedBox(
                                              child: Icon(
                                                Icons.done,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
                                              child: Text(AppLocalizations.of(context).getTranslate('confirm'), style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }


}