import 'package:flutter_stater/adapters/repository/home/user_repository.dart';
import 'package:flutter_stater/adapters/repository/setting/setting_repository.dart';
import 'package:flutter_stater/controllers/home_controller.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:flutter_stater/models/settings/itrmin_setting_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class IntroController extends GetxController {

  final GetStorage box;
  final UserRepository userRepository;
  final SettingRepository settingRepository;

  IntroController({
    required this.box,
    required this.userRepository,
    required this.settingRepository
  }) {
    init();
  }

  ItrminSettingModel itrminSetting = ItrminSettingModel(
      appName: "",
      videoAppUrl: "",
      domainApi: "",
      domainFileServer: "",
      id: 0,
      videoUrl: ""
  );

  void init() {
    getAppSetting();
  }

  Future getAppSetting() async {
    ResultModel response = await settingRepository.getAppSetting();
    if(response.status == true) {
      ItrminSettingModel itrminSetting =  ItrminSettingModel.fromJson(response.results);
      print("Itrmin Setting :" + itrminSetting.toString());
      storeAppConfig(itrminSetting);
      itrminSetting = itrminSetting;
    }
  }

  void storeAppConfig(ItrminSettingModel setting) {
    print("write: ${setting.toJson()}");
    box.write("setting_config", setting.toJson());
  }

  Future<bool> getUserInfo() async {
    ResultModel response = await userRepository.getPatientInfo();
    if(response.status == true) {
      HomeController homeController = GetxController
    }

  }

}