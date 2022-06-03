import 'package:flutter_stater/adapters/repository/app/app_repository.dart';
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

    AppRepository appRepository = AppRepository();

    Get.put<AppController>(
      AppController(
          box: GetStorage(AppStorages.APP),
          appRepository: appRepository
      ),
    );
  }


}