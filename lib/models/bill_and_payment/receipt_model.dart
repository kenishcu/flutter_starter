import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_model.freezed.dart';
part 'receipt_model.g.dart';

@freezed
class ReceiptModel with _$ReceiptModel {

  const ReceiptModel._();

  factory ReceiptModel({
    int? serviceId,
    String? serviceName,
    int? quantity,
    int? servicePrice,
    int? finalPrice,
    int? reductionPrice,
    int? healthInsuranceServicePrice,
    int? companyInsurancePrice,
    int? serviceCategoryId,
    String? serviceCategoryName
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, dynamic> json) => _$ReceiptModelFromJson(json);
}