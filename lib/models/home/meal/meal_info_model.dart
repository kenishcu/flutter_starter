import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_info_model.freezed.dart';
part 'meal_info_model.g.dart';

@freezed
class MealInfoModel {

  const MealInfoModel._();

  factory MealInfoModel({
    String? productId,
    String? name,
    int? quantity,
    String? unit,
    String? note,
  }) = _MealInfoModel;

  factory MealInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MealInfoModelFromJson(json);
}