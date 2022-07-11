import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:itrapp/adapters/dio/api_dio.dart';
import 'package:itrapp/models/result/result_model.dart';

class RoomRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/rooms";

  Future<ResultModel> findAll() async {
    try {
      var res = await client.dio.request(baseUrl, options: Options(method: 'GET'));
      // String data = await rootBundle.loadString('lib/adapters/data/room.json');
      // var res = json.decode(data);
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