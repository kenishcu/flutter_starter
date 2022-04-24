import 'package:flutter/material.dart';
import 'package:flutter_stater/models/food_treatment/menu_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../adapters/repository/food_treatment/food_treatment_repository.dart';
import '../models/restaurant/item_product_model.dart';

class FoodTreatmentController extends GetxController  with GetSingleTickerProviderStateMixin {

  final GetStorage box;

  final FoodTreatmentRepository foodTreatmentRepository;

  FoodTreatmentController({required this.box, required this.foodTreatmentRepository});

  List<ItemProductModel> itemEs = <ItemProductModel>[].obs;

  List<MenuModel> myTabs = <MenuModel>[].obs;

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    listKey.currentState!.dispose();
    super.dispose();
  }

  Future initFoodTreatment() async {
    final res = await foodTreatmentRepository.findAllMenu();
    if (res.status ==  true) {

    } else {

    }
  }
}