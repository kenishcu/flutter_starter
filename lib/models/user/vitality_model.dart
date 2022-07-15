import 'package:freezed_annotation/freezed_annotation.dart';

import 'vitality_detail_model.dart';

part 'vitality_model.freezed.dart';
part 'vitality_model.g.dart';

@freezed
class VitalityModel with _$VitalityModel {

  const VitalityModel._();

  factory VitalityModel({
    List<VitalityDetailModel>? vitality,
  }) = _VitalityModel;


  factory VitalityModel.fromJson(Map<String, dynamic> json) =>
      _$VitalityModelFromJson(json);

}