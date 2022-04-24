import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class ReceiptRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/receipt/services";

  Future<ResultModel> getBillAndPayment(int? patientId, String? receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '?patient_id=${patientId
              .toString()}&reception_queue_id=${receptionQueueId.toString()}',
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