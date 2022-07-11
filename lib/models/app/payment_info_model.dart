import 'package:itrapp/models/app/payment_config_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_info_model.freezed.dart';
part 'payment_info_model.g.dart';

@freezed
class PaymentInfoModel with _$PaymentInfoModel {

  const PaymentInfoModel._();

  factory PaymentInfoModel({
    PaymentConfigModel? momo,
    PaymentConfigModel? vnpay,
  }) = _PaymentInfoModel;

  factory PaymentInfoModel.fromJson(Map<String, dynamic> json) => _$PaymentInfoModelFromJson(json);
}