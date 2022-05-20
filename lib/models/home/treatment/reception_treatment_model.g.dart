// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reception_treatment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceptionTreatmentModel _$$_ReceptionTreatmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReceptionTreatmentModel(
      patientId: json['patientId'] as String?,
      patientFullName: json['patientFullName'] as String?,
      receptionQueueId: json['receptionQueueId'] as String?,
      inPatientRoomId: json['inPatientRoomId'] as int?,
      inPatientRoomName: json['inPatientRoomName'] as String?,
      bedId: json['bedId'] as int?,
      bedName: json['bedName'] as String?,
      treatments: (json['treatments'] as List<dynamic>?)
          ?.map((e) => TreatmentInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReceptionTreatmentModelToJson(
        _$_ReceptionTreatmentModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'patientFullName': instance.patientFullName,
      'receptionQueueId': instance.receptionQueueId,
      'inPatientRoomId': instance.inPatientRoomId,
      'inPatientRoomName': instance.inPatientRoomName,
      'bedId': instance.bedId,
      'bedName': instance.bedName,
      'treatments': instance.treatments,
    };
