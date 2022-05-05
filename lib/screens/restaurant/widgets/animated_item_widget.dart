import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/restaurant/product_restaurant_controller.dart';
import 'package:get/get.dart';

import '../../../models/restaurant/item_product_model.dart';
import '../../../utils/convert.dart';

class AnimatedItemWidget extends StatefulWidget {

  const AnimatedItemWidget({Key? key, required this.listKey}) : super(key: key);

  final GlobalKey<AnimatedListState> listKey;

  @override
  _AnimatedItemWidgetState createState() => _AnimatedItemWidgetState();

}

class _AnimatedItemWidgetState extends State<AnimatedItemWidget> {

  ProductRestaurantController controller = Get.find<ProductRestaurantController>();

  Widget _buildItem(BuildContext context, int index, animation) {

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
            child: Obx(() => Row(
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
                    child: Image.network("https://nhapi.hongngochospital.vn" + controller.itemEs[index].product!.imageUrl!),
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
                                    child: Text(controller.itemEs[index].product!.productName!,
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
                                                controller.subItem(index, widget.listKey);
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                          width: 30,
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: Text(controller.itemEs[index].number.toString())
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
                                                controller.plusItem(index);
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
                                      child: Text(formatPrice(controller.itemEs[index].product!.price! * controller.itemEs[index].number!))
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
            ))
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedList(
      key: widget.listKey,
      initialItemCount: controller.itemEs.length,
      itemBuilder: (BuildContext context, int index, Animation<double> animation) {
        return _buildItem(context, index, animation);
      },
    );
  }

}