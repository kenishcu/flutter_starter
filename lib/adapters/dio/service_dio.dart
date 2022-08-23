import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../controllers/app_controller.dart';
import '../../controllers/setting_controller.dart';

class ServiceDio {

  Dio dio;

  ServiceDio(this.dio);

  Future reGetToken() async {
    final settingController = Get.find<SettingController>();
    await settingController.regetToken();
  }

  Future retry(RequestOptions requestOptions) async {

    final options =  Options(
        method: requestOptions.method,
        headers: requestOptions.headers
    );

    return dio.request<dynamic>(
        requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options
    );
  }

  bool isSettingDevice() {
    AppController appController = Get.find<AppController>();
    return appController.isSettingDeviceInfo();
  }
}