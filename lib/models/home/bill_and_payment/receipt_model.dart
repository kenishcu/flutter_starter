import 'package:freezed_annotation/freezed_annotation.dart';

import 'receipt_service_model.dart';

part 'receipt_model.freezed.dart';
part 'receipt_model.g.dart';

@freezed
class ReceiptModel with _$ReceiptModel {

  const ReceiptModel._();

  factory ReceiptModel({
    int? branchId,
    String? branchName,
    int? patientId,
    String? receptionQueueId,
    String? patientFullname,
    double? totalPrice,
    double? finalPrice,
    String? receiptId,
    int? paymentStatus,
    int? receiptIndex,
    List<ReceiptServiceModel>? receipts,
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);

}
