import 'package:itrapp/adapters/repository/restaurant/restaurant_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RestaurantController extends GetxController {

  final GetStorage box;

  RestaurantController({required this.box}) {
    init();
  }

  void init() {}
}