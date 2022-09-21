import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itrapp/models/home/meal/meal_info_model.dart';
part 'reception_meal_model.freezed.dart';
part 'reception_meal_model.g.dart';

@freezed
class ReceptionMealModel with _$ReceptionMealModel {

  const ReceptionMealModel._();

  factory ReceptionMealModel({
    int? patientId,
    String? patientFullname,
    String? receptionQueueId,
    int? usedAt,
    int? mealTypeId,
    String? mealTypeCode,
    String? mealTypeName,
    List<MealInfoModel>? meals,
    Map<dynamic,dynamic>? lang
  }) = _ReceptionMealModel;

  factory ReceptionMealModel.fromJson(Map<String, dynamic> json) => _$ReceptionMealModelFromJson(json);

}