import 'package:flutter_stater/models/bill_and_payment/receipt_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

@freezed
class BillModel with _$BillModel {

  const BillModel._();

  factory BillModel({
      int? branchId,
      String? branchName,
      int? patientId,
      String? receptionQueueId,
      String? patientFullname,
      int? finalPrice,
      String? receiptId,
      List<ReceiptModel>? receipts,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) => _$BillModelFromJson(json);
}