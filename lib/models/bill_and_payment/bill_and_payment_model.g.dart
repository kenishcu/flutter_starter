// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_and_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillAndPaymentModel _$$_BillAndPaymentModelFromJson(
        Map<String, dynamic> json) =>
    _$_BillAndPaymentModel(
      serviceId: json['service_id'] as int?,
      serviceName: json['service_name'] as String?,
      quantity: json['quantity'] as int?,
      servicePrice: json['service_price'] as int?,
      finalPrice: json['final_price'] as int?,
      usedAt: json['used_at'] as int?,
    );

Map<String, dynamic> _$$_BillAndPaymentModelToJson(
        _$_BillAndPaymentModel instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'service_name': instance.serviceName,
      'quantity': instance.quantity,
      'service_price': instance.servicePrice,
      'final_price': instance.finalPrice,
      'used_at': instance.usedAt,
    };
