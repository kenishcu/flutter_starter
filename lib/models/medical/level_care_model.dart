import 'package:freezed_annotation/freezed_annotation.dart';

part 'level_care_model.freezed.dart';
part 'level_care_model.g.dart';

@freezed
class LevelCareModel with _$LevelCareModel {

  const LevelCareModel._();

  factory LevelCareModel({
    int? levelCareId,
    String? levelCareCode,
    String? levelCareName,
  }) = _LevelCareModel;

  factory LevelCareModel.fromJson(Map<String, dynamic> json) => _$LevelCareModelFromJson(json);

}