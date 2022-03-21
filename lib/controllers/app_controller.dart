import 'package:flutter/material.dart';
import 'package:flutter_stater/models/app_setting.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

enum AppState {
  loading, ready
}

class AppController extends GetxController {

  final GetStorage box;
  final _state = AppState.loading.obs;
  final _settings = AppSetting().obs;

  AppController(this.box) {
    init();
  }

  AppState get state => _state.value;
  set state(value) => _state.value = value;

  AppSetting get settings => _settings.value;
  set settings(AppSetting value) => _settings.value = value;


  void ready() {
    state = AppState.ready;
  }

  void init() {}

  ThemeMode getThemeMode() {
    return ThemeMode.light;
  }

}