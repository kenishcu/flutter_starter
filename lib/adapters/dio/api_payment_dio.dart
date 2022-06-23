import 'package:dio/dio.dart';
import 'package:flutter_stater/adapters/dio/service_dio.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/setting_controller.dart';
import 'interceptor.dart';

class ApiPaymentDio {
  Dio dio = Dio();

  late ServiceDio serviceDio;
  ApiPaymentDio() {

    serviceDio = ServiceDio(dio);
    BaseOptions options = BaseOptions(
        connectTimeout: CONNECT_TIME_OUT,
        receiveTimeout: RECEIVE_TIME_OUT,
        baseUrl: API_PAYMENT_URL,
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