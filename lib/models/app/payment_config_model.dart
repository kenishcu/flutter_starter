import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_config_model.freezed.dart';
part 'payment_config_model.g.dart';

@freezed
class PaymentConfigModel with _$PaymentConfigModel {

  const PaymentConfigModel._();

  factory PaymentConfigModel({
    String? key,
    String? merchantName,
    String? merchantCode,
    String? ipAddress,
    String? vendor,
    String? terminalId,
    String? terminalName,
  }) = _PaymentConfigModel;

  factory PaymentConfigModel.fromJson(Map<String, dynamic> json) => _$PaymentConfigModelFromJson(json);
}