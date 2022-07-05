import 'package:freezed_annotation/freezed_annotation.dart';

part 'bed_info_model.freezed.dart';
part 'bed_info_model.g.dart';

@freezed
class BedInfoModel with _$BedInfoModel {

  const BedInfoModel._();

  factory BedInfoModel({
    int? patientId,
    String? receptionQueueId,
  }) = _BedInfoModel;

  factory BedInfoModel.fromJson(Map<String, dynamic> json) => _$BedInfoModelFromJson(json);
}
