import 'package:flutter/material.dart';
import 'package:itrapp/controllers/food_treatment_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:itrapp/screens/food_treatment/widgets/animated_item_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../models/food_treatment/item_product_model.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/convert.dart';


class BillWidget extends StatefulWidget {

  const BillWidget({Key? key, required this.listKey}): super (key: key);

  final GlobalKey<AnimatedListState> listKey;

  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {

  FoodTreatmentController controller = Get.find<FoodTreatmentController>();

  late String _timeString;

  late FToast fToast;

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
                      child: Text(AppLocalizations.of(context).getTranslate('the_restaurant_had_received_order'), style: const TextStyle(
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
      toastDuration: const Duration(seconds: 4),
    );
  }

  AlertDialog _alertDialogOrder () {
    return AlertDialog(
      title: Text(AppLocalizations.of(context).getTranslate('order_confirmation')),
      content: SizedBox(
        height: 200,
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: Text("${AppLocalizations.of(context).getTranslate('please_enter_a_password')} :"),
            ),
            SizedBox(
              height: 80,
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
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "${AppLocalizations.of(context).getTranslate('password')}...",
                        border: InputBorder.none,
                        hintStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15, decoration: TextDecoration.none, fontFamily: 'Roboto', fontWeight: FontWeight.w100
                        ),
                      ),
                      onChanged: (value) {
                        controller.checkPassword(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Obx(() => SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 120,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: TextButton(
                        child: Text(AppLocalizations.of(context).getTranslate('close'), style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: controller.disabledOrder.value ? Theme.of(context).colorScheme.secondaryVariant : Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      width: 120,
                      child: TextButton(
                          child: Text(AppLocalizations.of(context).getTranslate('order'), style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          )),
                          onPressed: controller.disabledOrder.value == false ? null : () async {
                            bool res = await controller.order(widget.listKey);
                            if(res) {
                              _showToastSuccess();
                            } else {
                              _showToastError();
                            }
                            Navigator.pop(context);
                          }
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                            Container(
                              width: 80,
                              height: 40,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Theme.of(context).colorScheme.secondaryVariant,
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  Get.offAndToNamed(Routes.FOOD_TREATMENT_HISTORY);
                                },
                                child: SizedBox(
                                  child: Text(AppLocalizations.of(context).getTranslate('order_history'), style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.white
                                  ),),
                                ),
                              ),
                            )
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
                                  child: Text('${AppLocalizations.of(context).getTranslate('total')} : 0')),
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
                                          controller.setDisabledOrder();
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context){
                                                return _alertDialogOrder();
                                              }
                                          );
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
