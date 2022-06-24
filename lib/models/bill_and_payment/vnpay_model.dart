import 'package:freezed_annotation/freezed_annotation.dart';

part 'vnpay_model.freezed.dart';
part 'vnpay_model.g.dart';

@freezed
class VnPayModel with _$VnPayModel {

  const VnPayModel._();

  factory VnPayModel({
    String? partnerCode,
    String? partnerRefId,
    String? ipAddress,
    String? vendor,
    String? amount,
    int? partnerRefCode
  }) = _VnPayModel;

  factory VnPayModel.fromJson(Map<String, dynamic> json) => _$VnPayModelFromJson(json);
}