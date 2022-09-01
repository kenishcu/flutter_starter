import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_type_model.freezed.dart';
part 'meal_type_model.g.dart';

@freezed
class MealTypeModel with _$MealTypeModel {

  const MealTypeModel._();

  factory MealTypeModel({
    int? mealTypeId,
    String? mealTypeCode,
    String? mealTypeName
  }) = _MealTypeModel;


  factory MealTypeModel.fromJson(Map<String, dynamic> json) =>
      _$MealTypeModelFromJson(json);

}