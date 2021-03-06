// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reception_pharma_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceptionPharmaModel _$$_ReceptionPharmaModelFromJson(
    Map<String, dynamic> json) =>
    _$_ReceptionPharmaModel(
          patientId: json['patient_id'] as int?,
          patientFullname: json['patient_fullname'] as String?,
          receptionQueueId: json['reception_queue_id'] as String?,
          inPatientRoomId: json['in_patient_room_id'] as int?,
          inPatientRoomName: json['in_patient_room_name'] as String?,
          bedId: json['bed_id'] as int?,
          bedName: json['bed_name'] as String?,
          currentDayTime: json['current_day_time'] as int?,
          pharmas: (json['pharmas'] as List<dynamic>?)
              ?.map((e) => PharmaInfoModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_ReceptionPharmaModelToJson(
    _$_ReceptionPharmaModel instance) =>
    <String, dynamic>{
          'patient_id': instance.patientId,
          'patient_fullname': instance.patientFullname,
          'reception_queue_id': instance.receptionQueueId,
          'in_patient_room_id': instance.inPatientRoomId,
          'in_patient_room_name': instance.inPatientRoomName,
          'bed_id': instance.bedId,
          'bed_name': instance.bedName,
          'current_day_time': instance.currentDayTime,
          'pharmas': instance.pharmas,
    };
