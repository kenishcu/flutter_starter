import 'package:dio/dio.dart';
import 'package:flutter_stater/adapters/dio/api_dio.dart';

import '../../../models/result/result_model.dart';

class SettingRepository {

  ApiDio client = ApiDio();

  final baseUrl = '/device';

  final settingUrl = '/setting';

  Future<ResultModel> sendSetting(Map<String, dynamic> data) async {
    try {
      var res = await client.dio.request(baseUrl,
          data: data,
          options: Options(method: 'POST'));
      return ResultModel.fromJson(res.data);
    } on DioError catch (e) {
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }

  Future<ResultModel> getAppSetting() async {
    try {
      var response = await client.dio.request(
          settingUrl,
          options: Options(method: 'GET')
      );
      return ResultModel.fromJson(response.data);
    } on DioError catch (e) {
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }
}