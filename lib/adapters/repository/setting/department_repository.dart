import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stater/adapters/dio/api_dio.dart';
import 'package:flutter_stater/models/result/result_model.dart';
import 'package:flutter_stater/models/settings/department_model.dart';

class DepartmentRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/parents";

  Future<ResultModel> findAll() async {
    try {
      // var res = await client.dio.request(baseUrl, options: Options(method: 'GET'));
      String data = await rootBundle.loadString('lib/adapters/data/departments.json');
      var res = json.decode(data);
      return ResultModel.fromJson(res);
      // return ResultModel.fromJson(res.data);
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