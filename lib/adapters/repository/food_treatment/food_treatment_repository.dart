import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class FoodTreatmentRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/restaurant";

  final menuUrl = "/restaurant/menu-calendar-daily";


  Future<ResultModel> findAllMenu() async {
    try {
      var response = await client.dio.request(menuUrl , options: Options(method: 'GET'));
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

  Future<ResultModel> getProductByDay(int id, String mealTypeId, String menuId, String categoryId, String query) async {
    try {
      if(mealTypeId == '7') {
        mealTypeId = '';
      }
      var response = await client.dio.request(
          baseUrl + '/products?calendar_daily_id=${id.toString()}'
              '&meal_type_id=${mealTypeId.toString()}'
              '&menu_calendar_daily_id=${menuId.toString()}'
              '&category_id=${categoryId.toString()}'
              '&query=${query.toString()}',
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
      print("error: $e");
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
      print("error: $e");
      return ResultModel(
          status: false,
          error: e.error,
          results: null,
          appVersion: ''
      );
    }
  }

  Future<ResultModel> getOrders(int patientId, String receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/orders?patient_id=${patientId.toString()}&reception_queue_id=${receptionQueueId.toString()}&order_type=DOANDIEUTRI',
          options: Options(method: 'GET')
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