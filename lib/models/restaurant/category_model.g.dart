// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      categoryId: json['category_id'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      lang: json['lang'] == null
          ? null
          : LangCategoryModel.fromJson(json['lang'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'lang': instance.lang,
    };
