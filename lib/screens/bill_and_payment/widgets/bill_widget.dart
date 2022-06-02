import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/bill_and_payment_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/convert.dart';

class BillWidget extends StatefulWidget {

  const BillWidget({Key? key}) : super(key: key);

  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {

  BillAndPaymentController controller = Get.find<BillAndPaymentController>();

  Widget _menuBar(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
        ),
      ),
      child: Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List<Widget>.generate(controller.myTabs.length, (index) {
            return SizedBox(
                width: 150,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    controller.setSelectedTab(index);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                        color: controller.selectedTab.value == index ? Colors.white : Theme.of(context).colorScheme.onPrimary,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)
                        ),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Hoá đơn ${index + 1}", style: const TextStyle(
                              color: Colors.black,
                              fontWeight:  FontWeight.bold
                          ))
                      )
                  ),
                )
            );
          })
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
            child: Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("Trang chủ > Xem bảng kê và thanh toán",  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          const SizedBox(
            height: 40,
            child: Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("Bảng kê chi tiết",  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          Obx(() => controller.initScreen.value ? Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: _menuBar(context),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                          children: const [
                                            Expanded(
                                              flex: 3,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    "Nội dung"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "SL"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "Đơn giá"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "Thành tiền"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "BHYT"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "BHTN"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "NG"
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                child: Text(
                                                    "Số phải trả"
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: ListView.builder(
                                              itemCount: controller.myTabs[controller.selectedTab.value].receipts!.length,
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
                                                          flex: 3,
                                                          child: Align(
                                                            alignment: Alignment.centerLeft,
                                                            child: Text(
                                                                controller.myTabs[controller.selectedTab.value].receipts![index].serviceName.toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                controller.myTabs[controller.selectedTab.value].receipts![index].quantity.toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].receipts![index].servicePrice!).toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].receipts![index].servicePrice! *
                                                                    controller.myTabs[controller.selectedTab.value].receipts![index].quantity!).toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].receipts![index].healthInsuranceServicePrice!).toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].receipts![index].companyInsurancePrice!).toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].receipts![index].reductionPrice!).toString()
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Center(
                                                            child: Text(
                                                                formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].receipts![index].finalPrice!).toString()
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
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.onPrimary,
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)
                                    ),
                                  ),
                                  padding: const EdgeInsets.only(left: 30, right: 30),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("Tổng hoá đơn ${controller.selectedTab.value + 1}  : ${formatPriceNoSymbol(controller.myTabs[controller.selectedTab.value].finalPrice!)}" , style: const TextStyle(
                                                fontSize: 18,
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
                        )
                    )
                  ],
                ),
              )
          ): Container())
        ],
      ),
    );
  }

}