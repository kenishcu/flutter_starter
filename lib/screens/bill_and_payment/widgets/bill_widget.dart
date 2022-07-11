import 'package:flutter/material.dart';
import 'package:itrapp/controllers/bill_and_payment_controller.dart';
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
                  child: Text("Bảng kê chi tiết(Tạm tính)",  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))
              ),
            ),
            Expanded(
              child: Obx(() => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Container(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)
                          ),
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    "Tên dịch vụ"
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                    "Số lượng"
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
                                    "Ngày dùng"
                                ),
                              ),
                            )
                          ],
                        ),
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
                                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                                              formatPriceNoSymbol(controller.billAndPaymentInfo[index].finalPrice! * (controller.billAndPaymentInfo[index].quantity!)).toString()
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
                        ))
                  ],
                ),
              ))),
          ]
      ),
    );
  }

}