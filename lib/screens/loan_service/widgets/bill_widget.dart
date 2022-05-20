import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/restaurant/product_restaurant_controller.dart';
import '../../../utils/convert.dart';
import 'animated_item_widget.dart';

class BillWidget extends StatefulWidget {

  const BillWidget({Key? key, required this.listKey}): super (key: key);

  final GlobalKey<AnimatedListState> listKey;

  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {

  @override
  Widget build(BuildContext context) {

    ProductRestaurantController controller = Get.find<ProductRestaurantController>();

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
                  children: const [
                    SizedBox(
                      height: 40,
                      child: Text('Chú ý'),
                    ),
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
                      const SizedBox(
                        height: 60,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child:  Text("Giỏ hàng"),
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
                                  child: Obx(() => Text('Tổng : ${formatPrice(controller.total.value)}'))),
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
                                        onPressed: () {
                                        },
                                        child: Row(
                                          children: const [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
                                              child: Icon(
                                                Icons.done,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
                                              child: Text("HOÀN TẤT", style: TextStyle(
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