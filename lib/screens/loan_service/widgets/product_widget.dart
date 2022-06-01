import 'package:flutter/material.dart';
import 'package:flutter_stater/controllers/loan_service_controller.dart';
import 'package:get/get.dart';

import '../../../models/loan_service/loan_service_model.dart';
import '../../../utils/convert.dart';

class ProductWidget extends StatefulWidget {

  const ProductWidget({Key? key, required this.listKey}): super(key: key);

  final GlobalKey<AnimatedListState> listKey;

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {

  LoanServiceController controller = Get.find<LoanServiceController>();

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
                          child: Text(controller.myTabs[index].categoryName!, style: const TextStyle(
                              color: Colors.black
                          ))
                      )
                  ),
                )
            );
          })
      )),
    );
  }

  Widget _searchBar(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10 , top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: _daySelection(context),
            ),
            Expanded(
              flex: 3,
              child: _searchTextBar(context),
            ),
            Expanded(
              flex: 1,
              child: _filterBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _daySelection(BuildContext context){
    return SizedBox(
      height: 60,
      child: Container(
        padding: const EdgeInsets.only( right: 10.0, left: 10, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
              child: Text("Đặt cho ngày", style: TextStyle(
              )),
            ),
            SizedBox(
                height: 30,
                child: Container(
                  child: InkWell(
                    onTap: () {
                      // showDialog(
                      //   context: context,
                      //   builder: (_) => showCalendarDialog(context),
                      // );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(formatTime(controller.selectedDay) + "", style: const TextStyle(
                              fontSize: 20
                          )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        // SizedBox(
                        //   width: 30,
                        //   child:  IconButton(
                        //     padding: const EdgeInsets.all(0.0),
                        //     icon: const Icon(Icons.arrow_drop_down, size: 30),
                        //     tooltip: 'Increase',
                        //     onPressed: () {
                        //     },
                        //   ),
                        // )
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  Widget _submitMealInfo() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 30.0, bottom: 10),
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10.0)
            ),
            height: 50,
            width: 150,
            child: TextButton(
                onPressed: () {},
                child: const Text("OK", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ))
            ),
          )
        ],
      ),
    );
  }

  Widget _searchTextBar(BuildContext context) {
    return SizedBox(
        height: 60,
        width: double.infinity,
        child: Container(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
              controller: controller.textSearch[controller.selectedTab.value],
              style: const TextStyle(fontSize: 15.0),
              onChanged: (String text) {
                controller.search(text);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: const Icon(Icons.search),
                hintText: "",
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black12, width: 20.0),
                    borderRadius: BorderRadius.circular(25.0)
                ),
              ),
            )
        ));
  }

  Widget _filterBar() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              width: 30,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(0.0),
                      icon: const Icon(Icons.filter_list_alt, size: 30),
                      tooltip: 'Increase',
                      onPressed: () {
                      },
                    ),
                    const SizedBox(
                      height: 10,
                      child: Text("Lọc" , style: TextStyle(
                          fontSize: 10
                      )),
                    )
                  ],
                ),
              )
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 40,
            child: Container(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(0.0),
                    icon: const Icon(Icons.sort, size: 30),
                    tooltip: 'Increase',
                    onPressed: () {
                    },
                  ),
                  const SizedBox(
                    height: 10,
                    child: Text("Sắp xếp" , style: TextStyle(
                        fontSize: 10
                    )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _products(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        childAspectRatio: 3.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return _buildItemProduct(controller.products[controller.selectedTab.value][index], context);
        },
        childCount: controller.products[controller.selectedTab.value].length,
      ),
    );
  }

  Widget _buildItemProduct(LoanServiceModel productModel, BuildContext context) {
    return SizedBox(
        child: Container(
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
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 2
                      )
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network("https://itrapp.hongngochospital.vn" + productModel.imageUrl!),
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
                            padding: const EdgeInsets.only(bottom: 5.0, left: 5.0, top: 5.0, right: 10.0),
                            child: Text(productModel.serviceName!,
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
                                  child: Text(formatPrice(productModel.price!)),
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 40,
                                      margin: const EdgeInsets.only(right: 5.0, bottom: 10, left: 5),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.secondaryVariant,
                                          borderRadius: BorderRadius.circular(20.0)
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          controller.addItem(productModel, widget.listKey);
                                        },
                                        child: Row(
                                          children: const [
                                            SizedBox(
                                              child: Icon(
                                                Icons.add_shopping_cart,
                                                size: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
                                              child: Text("Thêm vào giỏ", style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),),
                                            )
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
        )
    );
  }

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text("Trang chủ > Mượn đồ",  style: TextStyle(
                  fontSize: 18,
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
                              _searchBar(context),
                              Expanded(
                                  child: CustomScrollView(
                                  slivers : <Widget>[
                                    SliverPadding(
                                      padding: const EdgeInsets.all(10.0),
                                      sliver: _products(context),
                                    )
                                  ]
                              ))
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