// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubCategoryModel _$$_SubCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_SubCategoryModel(
      categoryId: json['_id'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      lang: json['lang'] == null
          ? null
          : LangCategoryModel.fromJson(json['lang'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubCategoryModelToJson(_$_SubCategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.categoryId,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'lang': instance.lang,
    };
