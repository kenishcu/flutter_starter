import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:itrapp/lang/appLocalizations.dart';
import 'package:get/get.dart';

import '../../../utils/convert.dart';

class BillServiceWidget extends GetView<HomeController> {

  const BillServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (var element in controller.billAndPaymentInfo) {
      total += (element.quantity!) * (element.servicePrice!);
    }
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).colorScheme.surface
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                    child: Text(AppLocalizations.of(context).getTranslate('follow_the_list'), style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    )),
                  ),
                  Container(
                    width: 120,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).colorScheme.secondary
                    ),
                    child: TextButton(
                      onPressed: () async {
                        await controller.goToBill();
                      },
                      child: Text(
                        AppLocalizations.of(context).getTranslate('see_details').toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 20, left: 20),
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  AppLocalizations.of(context).getTranslate('service')
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                  AppLocalizations.of(context).getTranslate('amount')
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                  AppLocalizations.of(context).getTranslate('rate')
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                  AppLocalizations.of(context).getTranslate('into_money')
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                  AppLocalizations.of(context).getTranslate('used_date')
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: controller.billAndPaymentInfo.length,
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: (index.isOdd) ? Theme.of(context).colorScheme.background : Colors.white,
                                      border: const Border(
                                          bottom: BorderSide(
                                              color: Colors.grey,
                                              width: 1.0
                                          )
                                      )
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              controller.billAndPaymentInfo[index].serviceName.toString()
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                              controller.billAndPaymentInfo[index].quantity.toString()
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                              formatPriceNoSymbol(controller.billAndPaymentInfo[index].servicePrice!).toString()
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                              formatPriceNoSymbol(controller.billAndPaymentInfo[index].servicePrice! * (controller.billAndPaymentInfo[index].quantity!)).toString()
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                              convertFromUnixToTimeString(controller.billAndPaymentInfo[index].usedAt!).toString()
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }
                        )
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("${AppLocalizations.of(context).getTranslate('total_deposit')}: ${formatPriceNoSymbol(controller.patientInfo.totalDepositPrice! - controller.patientInfo.totalReturnPrice!)}" , style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        )),
                      ),
                      ),
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("${AppLocalizations.of(context).getTranslate('temporary_total_amount')}: ${controller.receiptModel.finalPrice! > 0 ? formatDoublePriceNoSymbol(controller.receiptModel.finalPrice!.toDouble()) : formatDoublePriceNoSymbol(total)}" , style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        )),
                      )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}