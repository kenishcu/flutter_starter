import 'package:flutter/material.dart';
import 'package:itrapp/controllers/bill_and_payment_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:itrapp/lang/appLocalizations.dart';

import '../../../utils/convert.dart';

class BillWidget extends StatefulWidget {
  const BillWidget({Key? key}) : super(key: key);

  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  @override
  Widget build(BuildContext context) {
    double totalBHYT = 0;
    double totalBHTN = 0;
    double totalReductionPrice = 0;
    double total = 0;
    for (var element in controller.receiptModel.receipts!) {
      totalBHYT += element.healthInsuranceServicePrice!;
      totalBHTN += element.companyInsurancePrice!;
      totalReductionPrice += element.reductionPrice!;
      total += (element.quantity!) * (element.servicePrice!);
    }
    // TODO: implement build
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                      "${AppLocalizations.of(context).getTranslate('home')} > ${AppLocalizations.of(context).getTranslate('view_statement_payment')}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
            ),
            SizedBox(
              height: 40,
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                      AppLocalizations.of(context)
                          .getTranslate('detailed_list_temporary'),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('service')),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('amount')),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('rate')),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('bhyt')),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('bhtn')),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('reduction_price')),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(AppLocalizations.of(context)
                                  .getTranslate('total_amount')),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: controller.receiptModel.receipts?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                decoration: BoxDecoration(
                                    color: (index.isOdd)
                                        ? Theme.of(context)
                                            .colorScheme
                                            .background
                                        : Colors.white,
                                    border: const Border(
                                        bottom: BorderSide(
                                            color: Colors.grey, width: 1.0))),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(controller.receiptModel
                                            .receipts![index].serviceName
                                            .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(controller.receiptModel
                                            .receipts![index].quantity
                                            .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(formatDoublePriceNoSymbol(
                                                controller
                                                    .receiptModel
                                                    .receipts![index]
                                                    .servicePrice!)
                                            .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(formatDoublePriceNoSymbol(
                                                controller
                                                    .receiptModel
                                                    .receipts![index]
                                                    .healthInsuranceServicePrice!)
                                            .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(formatDoublePriceNoSymbol(
                                                controller
                                                    .receiptModel
                                                    .receipts![index]
                                                    .companyInsurancePrice!)
                                            .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(formatDoublePriceNoSymbol(
                                                controller
                                                    .receiptModel
                                                    .receipts![index]
                                                    .reductionPrice!)
                                            .toString()),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(formatDoublePriceNoSymbol(controller
                                                        .receiptModel
                                                        .receipts![index]
                                                        .quantity! *
                                                    controller
                                                        .receiptModel
                                                        .receipts![index]
                                                        .servicePrice! -
                                                (controller
                                                        .receiptModel
                                                        .receipts![index]
                                                        .reductionPrice! +
                                                    controller
                                                        .receiptModel
                                                        .receipts![index]
                                                        .companyInsurancePrice! +
                                                    controller
                                                        .receiptModel
                                                        .receipts![index]
                                                        .healthInsuranceServicePrice!))
                                            .toString()),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                  SizedBox(
                    height: 50,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                                AppLocalizations.of(context)
                                    .getTranslate('temporary_total_amount'),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(""),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(""),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(formatDoublePriceNoSymbol(totalBHYT),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(formatDoublePriceNoSymbol(totalBHTN),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                  formatDoublePriceNoSymbol(
                                      totalReductionPrice),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                  formatDoublePriceNoSymbol(
                                      controller.receiptModel.finalPrice! > 0
                                          ? controller.receiptModel.finalPrice!
                                          : total),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ]),
    );
  }
}
