// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      bedName: json['bed_name'] as String?,
      read: json['read'] as bool?,
      notified: json['notified'] as bool?,
      data: json['data'] == null
          ? null
          : NotificationContentModel.fromJson(
              json['data'] as Map<String, dynamic>),
      createdAt: json['created_at'] as int?,
      updatedAt: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'bed_name': instance.bedName,
      'read': instance.read,
      'notified': instance.notified,
      'data': instance.data,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
