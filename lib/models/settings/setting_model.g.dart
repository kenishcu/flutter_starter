// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingModel _$$_SettingModelFromJson(Map<String, dynamic> json) =>
    _$_SettingModel(
      bedId: json['bed_id'] as int?,
      bedName: json['bed_name'] as String?,
      roomId: json['room_id'] as int?,
      roomName: json['room_name'] as String?,
      parentId: json['parent_id'] as int?,
      parentName: json['parent_name'] as String?,
      macAddress: json['mac_address'] as String?,
      ipAddress: json['ip_address'] as String?,
      deviceToken: json['device_token'] as String?,
      hotLine: json['hot_line'] as String?,
      authToken: json['auth_token'] as String?,
      contracts: (json['contracts'] as List<dynamic>?)
          ?.map((e) => ContactModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SettingModelToJson(_$_SettingModel instance) =>
    <String, dynamic>{
      'bed_id': instance.bedId,
      'bed_name': instance.bedName,
      'room_id': instance.roomId,
      'room_name': instance.roomName,
      'parent_id': instance.parentId,
      'parent_name': instance.parentName,
      'mac_address': instance.macAddress,
      'ip_address': instance.ipAddress,
      'device_token': instance.deviceToken,
      'hot_line': instance.hotLine,
      'auth_token': instance.authToken,
      'contracts': instance.contracts,
    };
