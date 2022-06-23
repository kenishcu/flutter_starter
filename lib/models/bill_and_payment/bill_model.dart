import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

@freezed
class BillModel with _$BillModel {

  const BillModel._();

  factory BillModel({
      int? id,
      int? receiptIndex,
      int? branchId,
      String? branchName,
      int? patientId,
      String? receptionQueueId,
      String? patientFullname,
      int? finalPrice,
      String? receiptId,
      int? paymentStatus
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) => _$BillModelFromJson(json);
}