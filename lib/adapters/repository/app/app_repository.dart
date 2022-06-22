import 'package:dio/dio.dart';
import 'package:flutter_stater/adapters/dio/api_dio.dart';
import 'package:flutter_stater/models/app/setting_result_model.dart';
import 'package:flutter_stater/models/result/result_model.dart';

class AppRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/setting";

  Future<SettingResultModel> getItrminSetting(int branchId) async {
    try {
      var res = await client.dio.request(baseUrl + '?branch_id=${branchId.toString()}', options: Options(method: 'GET'));
      return SettingResultModel.fromJson(res.data);
    } on DioError catch (e) {
      return SettingResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }
}