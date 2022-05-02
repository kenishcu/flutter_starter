import 'package:flutter/material.dart';
import 'package:flutter_stater/models/restaurant/item_product_model.dart';
import 'package:flutter_stater/screens/restaurant/widgets/animated_item_widget.dart';
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
                                child: const AnimatedItemWidget()
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