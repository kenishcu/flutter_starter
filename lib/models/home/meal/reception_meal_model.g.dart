part of 'reception_meal_model.dart';

_$_ReceptionMealModel _$$_ReceptionMealModelFromJson(Map<String, dynamic> json) {

  List<MealInfoModel> meals = [];
  if(json['products'] != null && json['products'].length > 0) {
    for(var meal in json['products']) {
      meals.add(MealInfoModel.fromJson(meal));
    }
  }

  return _$_ReceptionMealModel(
      patientId: json['patient_id'] as int?,
      patientFullname: json['patient_fullname'] as String?,
      receptionQueueId : json['reception_queue_id'] as String?,
      usedAt: json['used_at'] as int?,
      mealTypeId: json['meal_type_id'] as int?,
      mealTypeName: json['meal_type_name'] as String?,
      mealTypeCode: json['meal_type_code'] as String?,
      meals: meals as List<MealInfoModel>?
  );
}

Map<String, dynamic> _$$_ReceptionMealModelToJson(_$_ReceptionMealModel instance)
{
  List<Map<String, dynamic>> meals = [
  ];

  for(int i = 0; i< instance.meals!.length; i++) {
    meals.add(instance.meals![i].toJson());
  }

  return <String, dynamic>{
    'patient_id': instance.patientId,
    'patient_fullname': instance.patientFullname,
    'reception_queue_id': instance.receptionQueueId,
    'used_at': instance.usedAt,
    'meal_type_id': instance.mealTypeId,
    'meal_type_name': instance.mealTypeName,
    'meal_type_code': instance.mealTypeCode,
    'meals': meals
  };
}

