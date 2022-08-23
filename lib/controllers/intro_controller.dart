import 'package:itrapp/adapters/repository/home/user_repository.dart';
import 'package:itrapp/adapters/repository/setting/setting_repository.dart';
import 'package:itrapp/controllers/home_controller.dart';
import 'package:itrapp/controllers/setting_controller.dart';
import 'package:itrapp/models/result/result_model.dart';
import 'package:itrapp/models/settings/itrmin_setting_model.dart';
import 'package:itrapp/models/user/user_model.dart';
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

  /// Function: getAppSetting()
  /// Params: Null
  /// Description: If setting existed in local storage => update data setting,
  /// else call API get AppSetting and save setting to local storage
  Future getAppSetting() async {
    /// check data in storage
    getAppConfigFromStorage();

    /// get app setting
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

  void getAppConfigFromStorage() {
    print("------------------------------");
    final setting = box.read("setting_config");
    print('setting : ' + setting.toString());
  }

  Future<bool> getUserInfo() async {
    ResultModel response = await userRepository.getPatientInfo();
    if(response.status == true) {
      UserModel user = UserModel.fromJson(response.results);
      final HomeController homeController = Get.find<HomeController>();
      homeController.setPatientInfo(user);
      print('user inf : ${user.toJson()}');
      homeController.setBedInfo();
      await homeController.getBillAndPaymentInfo(user.patientId!, user.receptionQueueId!);
      await homeController.getScheduleOfPatient();
      homeController.setList();
      SettingController settingController = Get.find<SettingController>();
      settingController.getSettingConfig();
      return true;
    } else {
      return false;
    }
  }
}