import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharma_info_model.freezed.dart';
part 'pharma_info_model.g.dart';

@freezed
class PharmaInfoModel {

  const PharmaInfoModel._();

  factory PharmaInfoModel({
    int? pharmaId,
    String? pharmaName,
    num? quantity,
    String? note,
    String? pharmaDosage,
    String? pharmaDosageDetail,
    num? numberAfternoon,
    num? numberMorning,
    num? numberNight,
    num? numberNoon,
    num? numberDay,
    String? wayToUseName,
    String? unitName,
    DateTime? currentDayTime,
  }) = _PharmaInfoModel;

  factory PharmaInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PharmaInfoModelFromJson(json);
}