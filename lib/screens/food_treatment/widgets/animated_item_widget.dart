import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/food_treatment_controller.dart';
import 'package:flutter_stater/models/food_treatment/item_product_model.dart';
import 'package:get/get.dart';

import '../../../utils/convert.dart';

class AnimatedItemWidget extends StatefulWidget {

  const AnimatedItemWidget({Key? key, required this.listKey}) : super(key: key);

  final GlobalKey<AnimatedListState> listKey;

  @override
  _AnimatedItemWidgetState createState() => _AnimatedItemWidgetState();

}

class _AnimatedItemWidgetState extends State<AnimatedItemWidget> {

  FoodTreatmentController controller = Get.find<FoodTreatmentController>();

  TextEditingController editingController = TextEditingController();

  Dialog _showEditProduction(BuildContext context, ItemProductModel item, int index) {

    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: SizedBox(
          child: Container(
            height: 250,
            width: 500,
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
            child: Column(
              children: [
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).colorScheme.secondary,
                                    width: 2
                                )
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            child: Image.network("https://nhapi.hongngochospital.vn" + item.product!.imageUrl!),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 5.0, left: 5.0, top: 20.0, right: 10.0),
                                      child: Text(item.product!.productName!,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            fontSize: 16,
                                          )),
                                    )
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text("Giá : " + formatPrice(item.product!.price!) + "/1Sp"),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text("Số lượng : " + item.number.toString()),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                              ],
                            )
                        )
                      ],
                    )),
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Text("Ghi chú"),
                          ),
                          Expanded(
                              flex: 3,
                              child:  SizedBox(
                                  width: double.infinity,
                                  child: Container(
                                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0, left: 20.0),
                                      child: TextFormField(
                                        controller: editingController,
                                        style: const TextStyle(fontSize: 15.0),
                                        onChanged: (String text) {
                                          // controller.search(text);
                                        },
                                        decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                            prefixIcon: const Icon(Icons.search),
                                            hintText: "",
                                            border: OutlineInputBorder(
                                                borderSide: const BorderSide(color: Colors.black12, width: 20.0),
                                                borderRadius: BorderRadius.circular(25.0)
                                            ),
                                            fillColor: Colors.white
                                        ),
                                      )
                                  ))
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 50,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 70,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 150,
                              height: 60,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Huỷ"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 150,
                              height: 60,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondaryContainer,
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: TextButton(
                                onPressed: () {
                                  controller.editProduct(item, editingController.text, index);
                                  Navigator.pop(context);
                                },
                                child: Text("Ghi chú"),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
          ),
    );
  }

  Widget _buildItem(BuildContext context, int index, animation) {

    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0),
        end: Offset.zero,
      ).animate(animation),
      child: SizedBox(
        width: double.infinity,
        height: 120,
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
            child: Obx(() => Column(
              children: [
                Expanded(child: Row(
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
                                              onPressed: () {
                                                setState(() {
                                                  editingController.text = controller.itemEs[index].edit!;
                                                });
                                                showDialog(
                                                  context: context,
                                                  builder: (_) => _showEditProduction(context, controller.itemEs[index], index),
                                                );
                                              },
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
                )),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 80,
                        child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Ghi chú"),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Text(controller.itemEs[index].edit.toString(), overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
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