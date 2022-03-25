import 'package:flutter_stater/adapters/repository/home/user_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/setting_repository.dart';
import 'package:flutter_stater/controllers/index.dart';
import 'package:flutter_stater/storages/app_storages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class IntroBinding extends Bindings {

  final GetStorage box;

  IntroBinding({required this.box});

  @override
  void dependencies() {

    SettingRepository settingRepository = SettingRepository();
    UserRepository userRepository = UserRepository();

    Get.put<IntroController>(
      IntroController(
          box: GetStorage(AppStorages.APP),
          userRepository: userRepository,
          settingRepository: settingRepository
      )
    );
  }
}