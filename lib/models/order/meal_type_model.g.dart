// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealTypeModel _$$_MealTypeModelFromJson(Map<String, dynamic> json) =>
    _$_MealTypeModel(
      mealTypeId: json['meal_type_id'] as int?,
      mealTypeCode: json['meal_type_code'] as String?,
      mealTypeName: json['meal_type_name'] as String?,
      lang: json['lang'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MealTypeModelToJson(_$_MealTypeModel instance) =>
    <String, dynamic>{
      'meal_type_id': instance.mealTypeId,
      'meal_type_code': instance.mealTypeCode,
      'meal_type_name': instance.mealTypeName,
      'lang': instance.lang,
    };
