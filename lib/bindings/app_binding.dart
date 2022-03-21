import 'package:flutter_stater/controllers/app_controller.dart';
import 'package:flutter_stater/controllers/setting_controller.dart';
import 'package:flutter_stater/storages/app_storages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppBinding implements Bindings {

  final GetStorage box;

  AppBinding({
    required this.box,
  });

  @override
  void dependencies() {
    Get.put<AppController>(
      AppController(GetStorage(AppStorages.APP)),
    );
  }


}