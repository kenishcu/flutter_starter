import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class MedicalHistoryRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/medical-history";

  Future<ResultModel> getMedicalHistory(int patientId, int from, int to) async {
    try {
      var response = await client.dio.request(
          baseUrl + "?patient_id=" + patientId.toString() +
              "&from=" + from.toString() + "&to="+ to.toString() + "&n=100&p=1",
          options: Options(method: 'GET'));
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