import 'package:flutter_stater/models/settings/setting_model.dart';
import 'package:flutter_stater/models/user/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {

  final GetStorage box;

  HomeController({
    required this.box,
  }) {
    init();
  }

  late UserModel patientInfo;
  late SettingModel deviceInfo;

  void init() {
  }

  void setPatientInfo(UserModel user) {
    patientInfo = user;
  }

  void setBedInfo() {
    print("------------------------------");
    final deviceInfoMem = box.read("device_info");
    if(deviceInfoMem != null) {
      deviceInfo = SettingModel.fromJson(deviceInfoMem);
      print('device_info : ' + deviceInfo.toString());
    }
  }
}