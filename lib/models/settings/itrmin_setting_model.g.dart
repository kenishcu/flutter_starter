// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itrmin_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItrminSettingModel _$$_ItrminSettingModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItrminSettingModel(
      id: json['id'] as int?,
      appName: json['app_name'] as String?,
      slogan: json['slogan'] as int?,
      logoUrl: json['logo_url'] as String?,
      hotLine: json['hotline'] as int?,
      videoUrl: json['video_url'] as String?,
      videoAppUrl: json['video_app_url'] as String?,
      domainFileServer: json['domain_file_server'] as String?,
      domainApi: json['domain_api'] as String?,
    );

Map<String, dynamic> _$$_ItrminSettingModelToJson(
        _$_ItrminSettingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_name': instance.appName,
      'slogan': instance.slogan,
      'logo_url': instance.logoUrl,
      'hotline': instance.hotLine,
      'video_url': instance.videoUrl,
      'video_app_url': instance.videoAppUrl,
      'domain_file_server': instance.domainFileServer,
      'domain_api': instance.domainApi,
    };
