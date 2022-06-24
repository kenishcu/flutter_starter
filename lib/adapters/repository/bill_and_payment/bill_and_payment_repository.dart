import 'package:dio/dio.dart';

import '../../../models/result/result_model.dart';
import '../../dio/api_dio.dart';
import '../../dio/api_payment_dio.dart';

class BillAndPaymentRepository {

  ApiDio client = ApiDio();

  ApiPaymentDio clientPayment = ApiPaymentDio();

  final baseUrl = "/receipt";

  final basePayment = "/payment-gate/1/create-qr-code?fromClient=yes&v=20220324";

  Future<ResultModel> getBills(int? patientId, String? receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/receipts?patient_id=${patientId
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

  Future<ResultModel> getBillAndPaymentStatus (int? patientId, String? receptionQueueId) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/pay-in-room?patient_id=${patientId
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

  Future<ResultModel> sendBillAndPayment(Map<String,dynamic> data) async {
    try {
      var response = await client.dio.request(
          baseUrl + '/pay-in-room',
          data: data,
          options: Options(method: 'POST')
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

  Future<ResultModel> getImageQrVnPay(Map<String, dynamic> data) async {

    Map<String, dynamic> dataQr = {
      'results': data
    };
    try {
      var response = await clientPayment.dio.request(
          basePayment,
          data: dataQr,
          options: Options(method: 'POST')
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