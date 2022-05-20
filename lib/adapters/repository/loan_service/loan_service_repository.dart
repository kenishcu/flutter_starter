import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class LoanServiceRepository {
  ApiDio client = ApiDio();

  final baseUrl = "/services";

  final categoryUrl = "/categories";

  Future<ResultModel> getAllCategories() async {
    try {
      var response = await client.dio.request(
          categoryUrl, options: Options(method: 'GET'));
      return ResultModel.fromJson(response.data);
    } on DioError catch (e) {
      print("error: $e");
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }

  Future<ResultModel> getAllItem(String categoryId, String query) async {

    try {
      var response = await client.dio.request(
          baseUrl + '?category_id=${categoryId == "null" ? "": categoryId.toString()}&query=${query.toString()}',
          options: Options(method: 'GET')
      );
      return ResultModel.fromJson(response.data);
    } on DioError catch (e) {
      print("error: ");
      print (e.message);
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }

}