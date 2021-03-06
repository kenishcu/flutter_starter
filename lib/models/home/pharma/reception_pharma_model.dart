import 'package:freezed_annotation/freezed_annotation.dart';
import 'pharma_info_model.dart';

part 'reception_pharma_model.freezed.dart';
part 'reception_pharma_model.g.dart';

@freezed
class ReceptionPharmaModel with _$ReceptionPharmaModel {

  const ReceptionPharmaModel._();

  factory ReceptionPharmaModel({
    int? patientId,
    String? patientFullname,
    String? receptionQueueId,
    int? inPatientRoomId,
    String? inPatientRoomName,
    int? bedId,
    String? bedName,
    int? currentDayTime,
    List<PharmaInfoModel>? pharmas,
  }) = _ReceptionPharmaModel;

  factory ReceptionPharmaModel.fromJson(Map<String, dynamic> json) =>
      _$ReceptionPharmaModelFromJson(json);
}