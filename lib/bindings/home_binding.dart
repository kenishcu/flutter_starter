import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../storages/app_storages.dart';

class HomeBinding extends Bindings {

  final GetStorage box;

  HomeBinding({required this.box});

  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController( box: GetStorage(AppStorages.APP)),
    );
  }
}