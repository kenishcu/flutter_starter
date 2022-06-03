// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itrmin_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItrminConfigModel _$$_ItrminConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ItrminConfigModel(
      id: json['_id'] as String?,
      appName: json['app_name'] as String?,
      slogan: json['slogan'] as String?,
      logoUrl: json['logo_url'] as String?,
      hotline: json['hotline'] as String?,
      videoUrl: json['video_url'] as String?,
      videoAppUrl: json['video_app_url'] as String?,
      domainFileServer: json['domain_file_server'] as String?,
      domainApi: json['domain_api'] as String?,
      sleepTime: json['sleep_time'] as int?,
      lockOrder: json['lock_order'] as String?,
    );

Map<String, dynamic> _$$_ItrminConfigModelToJson(
        _$_ItrminConfigModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'app_name': instance.appName,
      'slogan': instance.slogan,
      'logo_url': instance.logoUrl,
      'hotline': instance.hotline,
      'video_url': instance.videoUrl,
      'video_app_url': instance.videoAppUrl,
      'domain_file_server': instance.domainFileServer,
      'domain_api': instance.domainApi,
      'sleep_time': instance.sleepTime,
      'lock_order': instance.lockOrder,
    };
