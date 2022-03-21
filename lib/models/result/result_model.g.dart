// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultModel _$$_ResultModelFromJson(Map<String, dynamic> json) =>
    _$_ResultModel(
      results: json['results'],
      error: json['error'],
      status: json['status'] as bool?,
      appVersion: json['appVersion'] as String?,
    );

Map<String, dynamic> _$$_ResultModelToJson(_$_ResultModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'error': instance.error,
      'status': instance.status,
      'appVersion': instance.appVersion,
    };
