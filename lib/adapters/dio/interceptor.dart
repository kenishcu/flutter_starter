import 'package:dio/dio.dart';
import 'package:itrapp/adapters/dio/service_dio.dart';
import 'package:itrapp/controllers/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InterWrapper extends InterceptorsWrapper {

  late Dio dio;

  late ServiceDio serviceDio;

  InterWrapper(this.dio, this.serviceDio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    // handle header token
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    print("Bearer ${token.toString()}");
    if(token != null && token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer " + token;
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    print("Response: ${response.data}");
    if (response.statusCode == 200 && response.data != null && response.data['token'] != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', response.data['token']);
    }
    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    print('ERROR[${err.toString()}]');
    if(err.message == 'HttpException: Failed to parse header value') {

      if (serviceDio.isSettingDevice()) {
        await serviceDio.reGetToken();
        await serviceDio.retry(err.requestOptions);
      }
    } else {
      return super.onError(err, handler);
    }
  }

}