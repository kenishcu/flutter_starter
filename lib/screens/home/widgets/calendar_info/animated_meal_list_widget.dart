import 'package:flutter/material.dart';
import 'package:flutter_stater/models/home/meal/meal_info_model.dart';
import 'package:get/get.dart';

import '../../../../controllers/home_controller.dart';
import 'animated_list_utils.dart';

class AnimatedMealListWidget extends GetView<HomeController> {

  const AnimatedMealListWidget({Key? key}) : super(key: key);

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      title: "Phục vụ ăn ${controller.listMeal[index].mealTypeName?.toLowerCase().toString()}",
      subTitle: "Tại phòng",
      iconData: Icons.restaurant,
      iconColor: Theme.of(context).colorScheme.secondary,
      backgroundColor: Theme.of(context).colorScheme.onSurface,
      shadowColor: Theme.of(context).colorScheme.secondaryContainer,
      time: "12:00-13:00",
      onTap: () {
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
          height: 30,
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Lịch ăn", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    )),
                  ),
                ),
                SizedBox(
                  width: 40,
                  child: controller.shrinkMealList == true ? IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.arrow_right, size: 30,),
                    onPressed: controller.showListMeal,
                    tooltip: 'shrink list item',
                  ) : IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.arrow_drop_down_outlined, size: 30),
                    onPressed: controller.shrinkListMeal,
                    tooltip: 'shrink list item',
                  ),
                )
              ],
            ),
          ),
        ),
          Expanded(
          flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: AnimatedList(
                key: controller.listKeyMeal,
                initialItemCount: controller.listMeal.length,
                itemBuilder: _buildItem,
              ),
            )
        )
      ],
    );
  }

}