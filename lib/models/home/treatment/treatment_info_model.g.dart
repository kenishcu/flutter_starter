// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TreatmentInfoModel _$$_TreatmentInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_TreatmentInfoModel(
      patientId: json['patientId'] as int?,
      patientFullname: json['patientFullname'] as String?,
      receptionQueueId: json['receptionQueueId'] as int?,
      serviceId: json['serviceId'] as int?,
      serviceCode: json['serviceCode'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceCategoryId: json['serviceCategoryId'] as int?,
      serviceCategoryName: json['serviceCategoryName'] as String?,
      serviceCategoryParentId: json['serviceCategoryParentId'] as int?,
      serviceCategoryParentName: json['serviceCategoryParentName'] as String?,
      currentDayTime: json['currentDayTime'] == null
          ? null
          : DateTime.parse(json['currentDayTime'] as String),
    );

Map<String, dynamic> _$$_TreatmentInfoModelToJson(
        _$_TreatmentInfoModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'patientFullname': instance.patientFullname,
      'receptionQueueId': instance.receptionQueueId,
      'serviceId': instance.serviceId,
      'serviceCode': instance.serviceCode,
      'serviceName': instance.serviceName,
      'serviceCategoryId': instance.serviceCategoryId,
      'serviceCategoryName': instance.serviceCategoryName,
      'serviceCategoryParentId': instance.serviceCategoryParentId,
      'serviceCategoryParentName': instance.serviceCategoryParentName,
      'currentDayTime': instance.currentDayTime?.toIso8601String(),
    };
