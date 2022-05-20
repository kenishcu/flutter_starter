import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class RestaurantRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/restaurant";

  Future<ResultModel> findAllRestaurantCate() async {
    try {
      var response = await client.dio.request(baseUrl + '/categories', options: Options(method: 'GET'));
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

  Future<ResultModel> findAllRestaurantSubCate(String id) async {
    try {
      var response = await client.dio.request(baseUrl + '/sub-categories?parent_id=${id.toString()}', options: Options(method: 'GET'));
      return ResultModel.fromJson(response.data);
    } on DioError catch (e) {
      print("error: ${e}");
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }

  Future<ResultModel> findAllProduct(String categoryId, String query, String parentId,  int limit, int page) async {

    try {
      var response = await client.dio.request(
          baseUrl + '/products?category_id=' + categoryId.toString()+"&query=" + query +"&parent_id=" + parentId + "&n=${limit.toString()}&p=${page.toString()}",
          options: Options(method: 'GET')
      );
      return ResultModel.fromJson(response.data);
    } on DioError catch (e) {
      print("error: ${e}");
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }

  Future<ResultModel> orderProducts( Map<String, dynamic> products) async {

    try {
      var response = await client.dio.request(
          baseUrl + '/order',
          data: products,
          options: Options(method: 'POST')
      );
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

}