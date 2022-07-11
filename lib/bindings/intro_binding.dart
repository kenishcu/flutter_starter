import 'package:itrapp/adapters/repository/home/user_repository.dart';
import 'package:itrapp/adapters/repository/setting/setting_repository.dart';
import 'package:itrapp/controllers/index.dart';
import 'package:itrapp/storages/app_storages.dart';
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