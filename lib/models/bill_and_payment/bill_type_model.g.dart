// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillTypeModel _$$_BillTypeModelFromJson(Map<String, dynamic> json) =>
    _$_BillTypeModel(
      patientId: json['patient_id'] as int?,
      receptionQueueId: json['reception_queue_id'] as String?,
      paymentTypeRequestedInRoom: json['payment_type_requested_in_room'] as String?,
      paymentRequestedInRoom: json['payment_requested_in_room'] as int?,
    );

Map<String, dynamic> _$$_BillTypeModelToJson(_$_BillTypeModel instance) =>
    <String, dynamic>{
      'patient_id': instance.patientId,
      'reception_queue_id': instance.receptionQueueId.toString(),
      'payment_type_requested_in_room': instance.paymentTypeRequestedInRoom,
      'payment_requested_in_room': instance.paymentRequestedInRoom,
    };
