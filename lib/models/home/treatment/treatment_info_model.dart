import 'package:freezed_annotation/freezed_annotation.dart';

part 'treatment_info_model.freezed.dart';
part 'treatment_info_model.g.dart';

@freezed
class TreatmentInfoModel with _$TreatmentInfoModel {

  const TreatmentInfoModel._();

  factory TreatmentInfoModel({
    int? patientId,
    String? patientFullname,
    String? receptionQueueId,
    int? serviceId,
    String? serviceCode,
    String? serviceName,
    int? serviceCategoryId,
    String? serviceCategoryName,
    int? serviceCategoryParentId,
    String? serviceCategoryParentName,
    String? roomNameToDo,
    int? roomIdToDo,
    int? currentDayTime,
  }) = _TreatmentInfoModel;

  factory TreatmentInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentInfoModelFromJson(json);
}