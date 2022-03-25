import 'package:dio/dio.dart';
import 'package:flutter_stater/models/result/result_model.dart';

import '../../dio/api_dio.dart';

class UserRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/patient";

  Future<ResultModel> getPatientInfo() async {
    try {
      var response = await client.dio.request(
          baseUrl,
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