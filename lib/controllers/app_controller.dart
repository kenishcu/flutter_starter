import 'package:flutter/material.dart';
import 'package:flutter_stater/adapters/repository/app/app_repository.dart';
import 'package:flutter_stater/models/app/app_setting.dart';
import 'package:flutter_stater/models/app/itrmin_config_model.dart';
import 'package:flutter_stater/models/app/setting_result_model.dart';
import 'package:flutter_stater/models/settings/itrmin_setting_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/app/payment_config_model.dart';
import '../routes/app_pages.dart';

enum AppState {
  loading, ready
}

class AppController extends GetxController {

  final GetStorage box;
  final AppRepository appRepository;
  final _state = AppState.loading.obs;
  final _settings = AppSetting().obs;

  AppController({
    required this.box,
    required this.appRepository
  });

  @override
  void onInit() {
    super.onInit();
  }

  Future initAppSetting () async {
    final map = box.read("device_info") ?? {};
    if(map['branch_id'] != null && map['branch_id'] != '') {
      SettingResultModel res = await appRepository.getItrminSetting(map['branch_id'] );
      if(res.status ==  true) {
        print('itrmin setting : ${res.results}');
        print('payment setting : ${res.payment}');
        // store setting itrmin

        // store momo config

        // store vnpay config
        
      } else {
      }
    }
  }

  ///
  void storeSettingItrminConfig(ItrminConfigModel setting) {
    print("write itrmin config: ${setting.toJson()}");
    box.write("itrmin_info", setting.toJson());
  }

  void storeSettingMoMoConfig(PaymentConfigModel momo) {
    print("write momo config: ${momo.toJson()}");
    box.write("momo_info", momo.toJson());
  }

  void storeSettingVnPayConfig(PaymentConfigModel vnpay) {
    print("write vnpay config: ${vnpay.toJson()}");
    box.write("momo_info", vnpay.toJson());
  }

  AppState get state => _state.value;
  set state(value) => _state.value = value;

  AppSetting get settings => _settings.value;
  set settings(AppSetting value) => _settings.value = value;

  void ready() {
    state = AppState.ready;
  }

  bool isSettingDeviceInfo() {
    final map = box.read("device_info") ?? {};
    if(map['bed_id'] != null){
      print('device_info: ${map.toString()}');
      return true;
    }
    return false;
  }

  ThemeMode getThemeMode() {
    return ThemeMode.light;
  }

}