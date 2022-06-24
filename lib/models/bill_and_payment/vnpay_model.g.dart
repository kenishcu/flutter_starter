// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vnpay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VnPayModel _$$_VnPayModelFromJson(Map<String, dynamic> json) =>
    _$_VnPayModel(
      partnerCode: json['partnerCode'] as String?,
      partnerRefId: json['partnerRefId'] as String?,
      ipAddress: json['ipAddress'] as String?,
      vendor: json['vendor'] as String?,
      amount: json['amount'] as String?,
      partnerRefCode: json['partnerRefCode'] as int?,
    );

Map<String, dynamic> _$$_VnPayModelToJson(_$_VnPayModel instance) =>
    <String, dynamic>{
      'partnerCode': instance.partnerCode,
      'partnerRefId': instance.partnerRefId,
      'ipAddress': instance.ipAddress,
      'vendor': instance.vendor,
      'amount': instance.amount,
      'partnerRefCode': instance.partnerRefCode,
    };
