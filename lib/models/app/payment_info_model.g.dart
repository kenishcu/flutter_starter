// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentInfoModel _$$_PaymentInfoModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentInfoModel(
      momo: json['MOMO'] == null
          ? null
          : PaymentConfigModel.fromJson(json['MOMO'] as Map<String, dynamic>),
      vnpay: json['VNPAY'] == null
          ? null
          : PaymentConfigModel.fromJson(json['VNPAY'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentInfoModelToJson(_$_PaymentInfoModel instance) =>
    <String, dynamic>{
      'MOMO': instance.momo,
      'VNPAY': instance.vnpay,
    };
