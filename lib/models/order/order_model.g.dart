// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['_id'] as String?,
      bedName: json['bed_name'] as String?,
      bedId: json['bed_id'] as int?,
      patientId: json['patient_id'] as int?,
      patientFullname: json['patient_fullname'] as String?,
      receptionQueueId: json['reception_queue_id'] as String?,
      roomId: json['room_id'] as int?,
      roomName: json['room_name'] as String?,
      reservationId: json['reservation_id'] as int?,
      createAt: json['create_at'] as int?,
      status: json['status'] as String?,
      paymentType: json['payment_type'] as String?,
      orderType: json['order_type'] as String?,
      usedAt: json['used_at'] as int?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'bed_name': instance.bedName,
      'bed_id': instance.bedId,
      'patient_id': instance.patientId,
      'patient_fullname': instance.patientFullname,
      'reception_queue_id': instance.receptionQueueId,
      'room_id': instance.roomId,
      'room_name': instance.roomName,
      'reservation_id': instance.reservationId,
      'create_at': instance.createAt,
      'status': instance.status,
      'payment_type': instance.paymentType,
      'order_type': instance.orderType,
      'used_at': instance.usedAt,
      'products': instance.products,
    };
