// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['_id'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      categoryId: json['category_id'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      status: json['status'] as int?,
      lang: json['lang'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'category_id': instance.categoryId,
      'thumbnail_url': instance.thumbnailUrl,
      'status': instance.status,
      'lang': instance.lang,
    };
