import 'package:freezed_annotation/freezed_annotation.dart';

part 'vitality_detail_model.freezed.dart';
part 'vitality_detail_model.g.dart';

@freezed
class VitalityDetailModel with _$VitalityDetailModel {

  const VitalityDetailModel._();

  factory VitalityDetailModel({
    num? canNang,
    num? chieuCao,
    num? huyetAp1,
    num? huyetAp2,
    num? mach,
    num? nhietDo,
    num? nhipTho,
  }) = _VitalityDetailModel;

  factory VitalityDetailModel.fromJson(Map<String, dynamic> json) => _$VitalityDetailModelFromJson(json);
}
