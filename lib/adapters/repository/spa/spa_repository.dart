import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class SpaRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/restaurant";
  final restaurantBranchId = "623944cc19a07bce54d4aa33";

  Future<ResultModel> findAllSpaCate() async {
    try {
      var response = await client.dio.request('/spa/categories', options: Options(method: 'GET'));
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

  Future<ResultModel> findAllSpaSubCate(String id) async {
    try {
      var response = await client.dio.request(baseUrl + '/sub-categories?parent_id=${id.toString()}&n=50&p=0', options: Options(method: 'GET'));
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

  Future<ResultModel> findAllProduct(String categoryId, String query, String parentId,  int limit, int page) async {
    try {
      DateTime date = DateTime.now();
      var response = await client.dio.request(
          baseUrl + '/products?category_id=' + categoryId.toString()+
              "&query=" + query +
              "&parent_id=" + parentId +
              "&restaurant_branch_id=" + restaurantBranchId +
              "&n=${limit.toString()}&p=${page.toString()}",
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

  Future<ResultModel> orderProducts( Map<String, dynamic> products) async {

    try {
      var response = await client.dio.request(
          baseUrl + '/order',
          data: products,
          options: Options(method: 'POST')
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

  Future<ResultModel> getAllMealType() async {
    try {
      var response = await client.dio.request(
          baseUrl + '/meals',
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

  Future<ResultModel> getOrders(int? patientId, String? receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/orders?patient_id=${patientId.toString()}&reception_queue_id=${receptionQueueId.toString()}&order_type=DOANNHAHANG',
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