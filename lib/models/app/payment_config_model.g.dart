// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentConfigModel _$$_PaymentConfigModelFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentConfigModel(
      key: json['Key'] as String?,
      merchantName: json['MerchantName'] as String?,
      merchantCode: json['MerchantCode'] as String?,
      ipAddress: json['IpAddress'] as String?,
      vendor: json['Vendor'] as String?,
      terminalId: json['TerminalId'] as String?,
      terminalName: json['TerminalName'] as String?,
    );

Map<String, dynamic> _$$_PaymentConfigModelToJson(
        _$_PaymentConfigModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'merchantName': instance.merchantName,
      'merchantCode': instance.merchantCode,
      'ipAddress': instance.ipAddress,
      'vendor': instance.vendor,
      'terminalId': instance.terminalId,
      'terminalName': instance.terminalName,
    };
