import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_service_model.freezed.dart';
part 'receipt_service_model.g.dart';

@freezed
class ReceiptServiceModel with _$ReceiptServiceModel{

  const ReceiptServiceModel._();

  factory ReceiptServiceModel({
    int? serviceId,
    String? serviceName,
    int? quantity,
    double? servicePrice,
    double? finalPrice,
    double? reductionPrice,
    double? healthInsuranceServicePrice,
    double? companyInsurancePrice,
    int? serviceCategoryId,
    String? serviceCategoryName,
  }) = _ReceiptServiceModel;

  factory ReceiptServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptServiceModelFromJson(json);
}