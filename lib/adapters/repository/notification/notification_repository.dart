import 'package:dio/dio.dart';
import 'package:itrapp/adapters/dio/api_dio.dart';
import 'package:itrapp/models/result/result_model.dart';

class NotificationRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/notifications";

  Future<ResultModel> getNotification(int num, int page) async {
    try {
      var res = await client.dio.request(baseUrl + '?n=${num.toString()}&p=${page.toString()}', options: Options(method: 'GET'));
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