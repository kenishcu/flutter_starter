// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itrmin_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItrminSettingModel _$$_ItrminSettingModelFromJson(
        Map<String, dynamic> json) =>
    _$_ItrminSettingModel(
      id: json['id'] as int?,
      appName: json['appName'] as String?,
      slogan: json['slogan'] as int?,
      logoUrl: json['logoUrl'] as String?,
      hotLine: json['hotLine'] as int?,
      videoUrl: json['videoUrl'] as String?,
      videoAppUrl: json['videoAppUrl'] as String?,
      domainFileServer: json['domainFileServer'] as String?,
      domainApi: json['domainApi'] as String?,
    );

Map<String, dynamic> _$$_ItrminSettingModelToJson(
        _$_ItrminSettingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appName': instance.appName,
      'slogan': instance.slogan,
      'logoUrl': instance.logoUrl,
      'hotLine': instance.hotLine,
      'videoUrl': instance.videoUrl,
      'videoAppUrl': instance.videoAppUrl,
      'domainFileServer': instance.domainFileServer,
      'domainApi': instance.domainApi,
    };
