// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bed_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BedInfoModel _$$_BedInfoModelFromJson(Map<String, dynamic> json) =>
    _$_BedInfoModel(
      patientId: json['patient_id'] as int?,
      receptionQueueId: json['reception_queue_id'] as String?,
    );

Map<String, dynamic> _$$_BedInfoModelToJson(_$_BedInfoModel instance) =>
    <String, dynamic>{
      'patient_id': instance.patientId,
      'reception_queue_id': instance.receptionQueueId,
    };
