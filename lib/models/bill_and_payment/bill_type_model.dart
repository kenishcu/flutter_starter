import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_type_model.freezed.dart';
part 'bill_type_model.g.dart';

@freezed
class BillTypeModel with _$BillTypeModel {

  const BillTypeModel._();

  factory BillTypeModel({
    int? patientId,
    String? receptionQueueId,
    String? paymentTypeRequestedInRoom,
    int? paymentRequestedInRoom
  }) = _BillTypeModel;

  factory BillTypeModel.fromJson(Map<String, dynamic> json) => _$BillTypeModelFromJson(json);
}