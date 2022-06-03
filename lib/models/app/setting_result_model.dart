import 'package:flutter_stater/models/app/payment_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_result_model.freezed.dart';
part 'setting_result_model.g.dart';

@freezed
class SettingResultModel with _$SettingResultModel {

  const SettingResultModel._();

  factory SettingResultModel({
    dynamic results,
    dynamic error,
    bool? status,
    PaymentInfoModel? payment,
    String? appVersion,

  }) = _SettingResultModel;

  factory SettingResultModel.fromJson(Map<String, dynamic> json) =>
      _$SettingResultModelFromJson(json);

}