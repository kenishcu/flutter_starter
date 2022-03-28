// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IcdModel _$$_IcdModelFromJson(Map<String, dynamic> json) => _$_IcdModel(
      serviceId: json['service_id'] as int?,
      serviceCode: json['service_code'] as String?,
      serviceName: json['service_name'] as String?,
    );

Map<String, dynamic> _$$_IcdModelToJson(_$_IcdModel instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'service_code': instance.serviceCode,
      'service_name': instance.serviceName,
    };
