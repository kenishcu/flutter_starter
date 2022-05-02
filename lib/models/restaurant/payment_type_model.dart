import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_model.freezed.dart';
part 'payment_type_model.g.dart';

@freezed
class PaymentTypeModel with _$PaymentTypeModel {

  const PaymentTypeModel._();

  factory PaymentTypeModel({
    String? paymentTypeId,
    String? paymentTypeCode,
    String? paymentTypeName,
  }) = _PaymentTypeModel;

  factory PaymentTypeModel.fromJson(Map<String, dynamic> json) => _$PaymentTypeModelFromJson(json);
}