import 'package:dio/dio.dart';
import 'package:itrapp/adapters/dio/service_dio.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/setting_controller.dart';
import 'interceptor.dart';

class ApiDio {
  Dio dio = Dio();

  late ServiceDio serviceDio;
  ApiDio() {

    serviceDio = ServiceDio(dio);
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
        InterWrapper(dio, serviceDio)
    );
  }
}