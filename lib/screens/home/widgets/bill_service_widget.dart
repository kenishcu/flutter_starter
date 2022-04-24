import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../../utils/convert.dart';

class BillServiceWidget extends GetView<HomeController> {

  const BillServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int total = 0;
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
                    child: const Text("Theo dõi bản kê", style: TextStyle(
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
                      onPressed: () {  },
                      child: Text(
                        "Xem chi tiết".toUpperCase(),
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
                                      border: Border(
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
                                              formatPrice(controller.billAndPaymentInfo[index].servicePrice!).toString()
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Text(
                                              formatPrice(controller.billAndPaymentInfo[index].finalPrice! * (controller.billAndPaymentInfo[index].quantity!)).toString()
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
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Tổng tạm tính: ${formatPrice(total)}" , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}