// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealInfoModel _$$_MealInfoModelFromJson(Map<String, dynamic> json) =>
    _$_MealInfoModel(
      productId: json['productId'] as String?,
      name: json['name'] as String?,
      quantity: json['quantity'] as int?,
      unit: json['unit'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_MealInfoModelToJson(_$_MealInfoModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'note': instance.note,
    };
