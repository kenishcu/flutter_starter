// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingResultModel _$$_SettingResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_SettingResultModel(
      results: json['results'],
      error: json['errors'],
      status: json['status'] as bool?,
      payment: json['payment_info'] == null
          ? null
          : PaymentInfoModel.fromJson(json['payment_info'] as Map<String, dynamic>),
      appVersion: json['appVersion'] as String?,
    );

Map<String, dynamic> _$$_SettingResultModelToJson(
        _$_SettingResultModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'errors': instance.error,
      'status': instance.status,
      'payment_info': instance.payment,
      'app_version': instance.appVersion,
    };
