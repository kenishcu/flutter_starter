import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InterWrapper extends InterceptorsWrapper {

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
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    print('ERROR[${err.toString()}]');
    return super.onError(err, handler);
  }

}