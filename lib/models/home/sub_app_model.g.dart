// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubAppModel _$$_SubAppModelFromJson(Map<String, dynamic> json) =>
    _$_SubAppModel(
      id: json['id'] as int?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as int?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_SubAppModelToJson(_$_SubAppModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'thumbnail_url': instance.thumbnailUrl,
      'status': instance.status,
    };
