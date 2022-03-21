import 'package:dio/dio.dart';

import '../../constants.dart';
import 'interceptor.dart';

class ApiDio {
  Dio dio = Dio();

  ApiDio() {
    BaseOptions options = BaseOptions(
        connectTimeout: CONNECT_TIME_OUT,
        receiveTimeout: RECEIVE_TIME_OUT,
        baseUrl: API_URL,
        headers: {
          "content-Type": "application/json"
        }
    );
    dio.options = options;
    dio.interceptors.add(
        InterWrapper()
    );
  }
}