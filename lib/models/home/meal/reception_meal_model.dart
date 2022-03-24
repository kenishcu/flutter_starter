
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_stater/models/home/meal/meal_info_model.dart';
part 'reception_meal_model.freezed.dart';
part 'reception_meal_model.g.dart';

class ReceptionMealModel {

  const ReceptionMealModel._();

  factory ReceptionMealModel({
    int? patientId,
    String? patientFullname,
    String? receptionQueueId,
    DateTime? usedAt,
    int? mealTypeId,
    String? mealTypeCode,
    String? mealTypeName,
    List<MealInfoModel>? meals,
  }) = _ReceptionMealModel;

  factory ReceptionMealModel.fromJson(Map<String, dynamic> json) =>
      _$ReceptionMealModelFromJson(json);
}