// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TreatmentInfoModel _$$_TreatmentInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_TreatmentInfoModel(
      patientId: json['patient_id'] as int?,
      patientFullname: json['patient_fullname'] as String?,
      receptionQueueId: json['reception_queue_id'] as String?,
      serviceId: json['service_id'] as int?,
      serviceCode: json['service_code'] as String?,
      serviceName: json['service_name'] as String?,
      serviceCategoryId: json['service_category_id'] as int?,
      serviceCategoryName: json['service_category_name'] as String?,
      serviceCategoryParentId: json['service_category_parent_id'] as int?,
      serviceCategoryParentName: json['service_category_parent_name'] as String?,
      roomNameToDo: json['room_name_to_do'] as String?,
      roomIdToDo: json['room_id_to_do'] as int?,
      currentDayTime: json['current_day_time'] as int?,
    );

Map<String, dynamic> _$$_TreatmentInfoModelToJson(
        _$_TreatmentInfoModel instance) =>
    <String, dynamic>{
      'patient_id': instance.patientId,
      'patient_fullname': instance.patientFullname,
      'reception_queue_id': instance.receptionQueueId,
      'service_category_id': instance.serviceId,
      'service_code': instance.serviceCode,
      'service_name': instance.serviceName,
      'service_category_id': instance.serviceCategoryId,
      'service_category_name': instance.serviceCategoryName,
      'service_category_parent_id': instance.serviceCategoryParentId,
      'service_category_parent_name': instance.serviceCategoryParentName,
      'room_name_to_do': instance.roomNameToDo,
      'room_id_to_do': instance.roomIdToDo,
      'current_day_time': instance.currentDayTime,
    };
