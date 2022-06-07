import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class CalendarInfoRepository {

  ApiDio client = ApiDio();

  final treatmentUrl = "/recommendation-services";
  final mealUrl = "/food";
  final pharmaUrl = "/pharmas";

  Future<ResultModel> getTreatmentInfo() async {
    try {
      var response = await client.dio.request(
          treatmentUrl ,
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

  Future<ResultModel> getMealInfo() async {
    try {
      var response = await client.dio.request(
          mealUrl ,
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

  Future<ResultModel> getPharmaInfo() async {
    try {
      var response = await client.dio.request(
          pharmaUrl ,
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