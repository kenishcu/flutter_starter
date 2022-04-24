import 'package:flutter_stater/adapters/repository/restaurant/restaurant_repository.dart';
import 'package:flutter_stater/controllers/restaurant/product_restaurant_controller.dart';
import 'package:flutter_stater/controllers/restaurant/restaurant_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class RestaurantBinding extends Bindings {

  final GetStorage box;

  RestaurantBinding({
    required this.box
  });

  @override
  void dependencies() {

    final RestaurantRepository restaurantRepository = RestaurantRepository();

    Get.put<RestaurantController>(
      RestaurantController(
        box: GetStorage(AppStorages.APP),
      ),
    );

    Get.put<ProductRestaurantController>(
       ProductRestaurantController(
         box: GetStorage(AppStorages.APP),
         restaurantRepository: restaurantRepository,
       )
    );
  }
}