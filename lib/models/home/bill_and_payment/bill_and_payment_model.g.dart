// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_and_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillAndPaymentModel _$$_BillAndPaymentModelFromJson(
        Map<String, dynamic> json) =>
    _$_BillAndPaymentModel(
      serviceId: json['serviceId'] as int?,
      serviceName: json['serviceName'] as String?,
      quantity: json['quantity'] as int?,
      servicePrice: json['servicePrice'] as int?,
      finalPrice: json['finalPrice'] as int?,
      usedAt: json['usedAt'] as int?,
    );

Map<String, dynamic> _$$_BillAndPaymentModelToJson(
        _$_BillAndPaymentModel instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'serviceName': instance.serviceName,
      'quantity': instance.quantity,
      'servicePrice': instance.servicePrice,
      'finalPrice': instance.finalPrice,
      'usedAt': instance.usedAt,
    };
