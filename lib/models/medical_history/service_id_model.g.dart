// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceIdModel _$$_ServiceIdModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceIdModel(
      currentDayTime: json['current_day_time'] as int?,
      inPatient: json['in_patient'] as int?,
      receptionQueueId: json['reception_queue_id'] as String?,
      serviceCategoryId: json['service_category_id'] as int?,
      serviceCategoryName: json['service_category_name'] as String?,
      serviceCategoryParentId: json['service_category_parent_id'] as int?,
      serviceCategoryParentName: json['service_category_parent_name'] as String?,
    );

Map<String, dynamic> _$$_ServiceIdModelToJson(_$_ServiceIdModel instance) =>
    <String, dynamic>{
      'current_day_time': instance.currentDayTime,
      'in_patient': instance.inPatient,
      'reception_queue_id': instance.receptionQueueId,
      'service_category_id': instance.serviceCategoryId,
      'service_category_name': instance.serviceCategoryName,
      'service_category_parent_id': instance.serviceCategoryParentId,
      'service_category_parent_name': instance.serviceCategoryParentName,
    };
