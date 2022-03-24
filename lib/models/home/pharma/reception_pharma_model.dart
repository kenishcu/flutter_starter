import 'package:freezed_annotation/freezed_annotation.dart';
import 'pharma_info_model.dart';

part 'pharma_info_model.freezed.dart';
part 'pharma_info_model.g.dart';

@freezed
class ReceptionPharmaModel {

  const ReceptionPharmaModel._();

  factory ReceptionPharmaModel({
    int? patientId,
    String? patientFullname,
    String? receptionQueueId,
    int? inPatientRoomId,
    String? inPatientRoomName,
    int? bedId,
    String? bedName,
    List<PharmaInfoModel>? pharmas,
  }) = _ReceptionPharmaModel;

  factory ReceptionPharmaModel.fromJson(Map<String, dynamic> json) =>
      _$ReceptionPharmaModelFromJson(json);
}