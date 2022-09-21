// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reception_meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceptionMealModel _$$_ReceptionMealModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReceptionMealModel(
      patientId: json['patient_id'] as int?,
      patientFullname: json['patient_fullname'] as String?,
      receptionQueueId : json['reception_queue_id'] as String?,
      usedAt: json['used_at'] as int?,
      mealTypeId: json['meal_type_id'] as int?,
      mealTypeName: json['meal_type_name'] as String?,
      mealTypeCode: json['meal_type_code'] as String?,
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => MealInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lang: json['lang'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ReceptionMealModelToJson(
        _$_ReceptionMealModel instance) =>
    <String, dynamic>{
      'patient_id': instance.patientId,
      'patient_fullname': instance.patientFullname,
      'reception_queue_id': instance.receptionQueueId,
      'used_at': instance.usedAt,
      'meal_type_id': instance.mealTypeId,
      'meal_type_name': instance.mealTypeName,
      'meal_type_code': instance.mealTypeCode,
      'meals': instance.meals,
      'lang': instance.lang,
    };
