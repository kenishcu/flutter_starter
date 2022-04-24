import 'package:flutter/material.dart';
import 'package:flutter_stater/models/restaurant/item_product_model.dart';
import 'package:get/get.dart';
import 'package:money2/money2.dart';

import '../../../controllers/restaurant/product_restaurant_controller.dart';
import '../../../models/restaurant/product_model.dart';

class BillWidget extends GetView<ProductRestaurantController> {

  const BillWidget({Key? key}): super (key: key);

  String _formatPrice(int price) {
    if(price == 0) {
      return price.toString() + ' đ';
    }
    final vnd = Currency.create('VND', 3,
        symbol: 'đ', invertSeparators: true, pattern: '#.##0,000 S');
    return Money.fromIntWithCurrency(price, vnd, scale: 3).toString();
  }

  Widget _buildItem(BuildContext context, int index, animation) {

    ItemProductModel item = controller.itemEs[index];

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0),
        end: Offset.zero,
      ).animate(animation),
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 1.5,
                  offset: const Offset(0, 1),
                ),
              ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 10, left: 5, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 2
                      )
                  ),
                  width: 50,
                  height: double.infinity,
                  child: Image.network("https://nhapi.hongngochospital.vn" + item.product!.imageUrl!),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children : [
                              Expanded(
                                  flex: 3,
                                  child: Text(item.product!.productName!,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ))),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Container(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: IconButton(
                                            padding: const EdgeInsets.all(0.0),
                                            icon: const Icon(Icons.remove, size: 20),
                                            tooltip: 'Remove Item',
                                            onPressed: () {
                                              controller.subItem(index);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 30,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(item.number.toString())
                                        )
                                    ),
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Container(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: IconButton(
                                            padding: const EdgeInsets.all(0.0),
                                            icon: const Icon(Icons.add, size: 20),
                                            tooltip: 'Increase',
                                            onPressed: () {
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Text(_formatPrice(item.product!.price!))
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.secondaryVariant,
                                          borderRadius: BorderRadius.circular(20.0)
                                      ),
                                      child: TextButton(
                                        onPressed: () { },
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            SizedBox(
                                              child: Text("Ghi chú", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white
                                                )
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
                                              height: double.infinity,
                                              child: Icon(
                                                Icons.edit,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                              )
                            ],
                          )
                      )
                    ],
                  )
              )
            ],
          ),
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
              children: const [
                SizedBox(
                  height: 40,
                  child: Text('Chú ý'),
                ),
                SizedBox(
                  height: 50,
                  child: Text('Không ăn rau muống.'),
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
                              child:  Obx(() => AnimatedList(
                                key: controller.listKey,
                                initialItemCount: controller.itemEs.length,
                                itemBuilder: (BuildContext context, int index, Animation<double> animation) {
                                  return _buildItem(context, index, animation);
                                },
                              ))
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
                                  child: Text('Tổng :')),
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