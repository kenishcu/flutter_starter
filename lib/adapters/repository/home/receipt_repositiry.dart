import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';

class ReceiptRepository {

  ApiDio client = ApiDio();

  final baseUrl = "/receipt";

  Future<ResultModel> getBillAndPayment(int? patientId, String? receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/services?patient_id=${patientId
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

  Future<ResultModel> getReceiptInfo(int? patientId, String? receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/receipt-info?patient_id=${patientId
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