import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang_meal_type_model.freezed.dart';
part 'lang_meal_type_model.g.dart';

@freezed
class LangMealTypeModel with _$LangMealTypeModel {

  const LangMealTypeModel._();

  factory LangMealTypeModel({
    String? mealTypeNameEN,
    String? mealTypeNameVI,
  }) = _LangMealTypeModel;

  factory LangMealTypeModel.fromJson(Map<String, dynamic> json) => _$LangMealTypeModelFromJson(json);
}