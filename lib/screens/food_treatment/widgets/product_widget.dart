import 'package:flutter_stater/controllers/food_treatment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends GetView<FoodTreatmentController>{

  const ProductWidget({Key? key}): super(key: key);

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
                          child: Text(controller.myTabs[index].menuCalendarDailyName!, style: const TextStyle(
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
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("Trang chủ > Nhà hàng",  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
            ),
          ),
          Obx(() =>  Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: _menuBar(context),
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
                              // _categoryBar(context),
                              // _searchBar(context),
                              // Expanded(child: CustomScrollView(
                              //     slivers : <Widget>[
                              //       SliverPadding(
                              //         padding: const EdgeInsets.all(10.0),
                              //         sliver: _products(context),
                              //       )
                              //     ]
                              // ))
                            ],
                          ),
                        )
                    )
                  ],
                ),
              )
          ))
        ],
      ),
    );
  }

}