// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingModel _$$_SettingModelFromJson(Map<String, dynamic> json) =>
    _$_SettingModel(
      bedId: json['bedId'] as int?,
      bedName: json['bedName'] as String?,
      roomId: json['roomId'] as int?,
      roomName: json['roomName'] as String?,
      parentId: json['parentId'] as int?,
      parentName: json['parentName'] as String?,
      macAddress: json['macAddress'] as String?,
      ipAddress: json['ipAddress'] as String?,
      deviceToken: json['deviceToken'] as String?,
      hotLine: json['hotLine'] as String?,
      authToken: json['authToken'] as String?,
      contracts: (json['contracts'] as List<dynamic>?)
          ?.map((e) => ContactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SettingModelToJson(_$_SettingModel instance) =>
    <String, dynamic>{
      'bedId': instance.bedId,
      'bedName': instance.bedName,
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'macAddress': instance.macAddress,
      'ipAddress': instance.ipAddress,
      'deviceToken': instance.deviceToken,
      'hotLine': instance.hotLine,
      'authToken': instance.authToken,
      'contracts': instance.contracts,
    };
