import 'package:flutter_stater/models/home/treatment/treatment_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reception_treatment_model.freezed.dart';
part 'reception_treatment_model.g.dart';

@freezed
class ReceptionTreatmentModel with _$ReceptionTreatmentModel{

  const ReceptionTreatmentModel._();

  factory ReceptionTreatmentModel({
    String? patientId,
    String? patientFullName,
    String? receptionQueueId,
    int? inPatientRoomId,
    String? inPatientRoomName,
    int? bedId,
    String? bedName,
    List<TreatmentInfoModel>? treatments,
  }) = _ReceptionTreatmentModel;


  factory ReceptionTreatmentModel.fromJson(Map<String, dynamic> json) =>
      _$ReceptionTreatmentModelFromJson(json);
}