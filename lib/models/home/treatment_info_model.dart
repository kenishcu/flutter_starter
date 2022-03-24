import 'package:freezed_annotation/freezed_annotation.dart';

part 'treatment_info_model.freezed.dart';
part 'treatment_info_model.g.dart';

@freezed
class TreatmentInfoModel {

  const TreatmentInfoModel._();

  factory TreatmentInfoModel({
    int? patientId,
    String? patientFullname,
    int? receptionQueueId,
    int? serviceId,
    String? serviceCode,
    String? serviceName,
    int? serviceCategoryId,
    String? serviceCategoryName,
    int? serviceCategoryParentId,
    String? serviceCategoryParentName,
    double? currentDayTime,
  }) = _TreatmentInfoModel;

  factory TreatmentInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentInfoModelFromJson(json);
}