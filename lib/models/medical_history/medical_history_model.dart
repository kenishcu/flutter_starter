import 'package:flutter_stater/models/medical_history/service_id_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'medical_history_tree1_model.dart';

part 'medical_history_model.freezed.dart';
part 'medical_history_model.g.dart';

@freezed
class MedicalHistoryModel  with _$MedicalHistoryModel{
  const MedicalHistoryModel._();

  factory MedicalHistoryModel({
    ServiceIdModel? id,
    List<MedicalHistoryTree1Model>? datas,
  }) = _MedicalHistoryModel;

  factory MedicalHistoryModel.fromJson(Map<String, dynamic> json) => _$MedicalHistoryModelFromJson(json);

}