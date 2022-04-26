import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class BranchRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/branches";

  Future<ResultModel> findAll() async {
    try {
      var res = await client.dio.request(baseUrl, options: Options(method: 'GET'));
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
}