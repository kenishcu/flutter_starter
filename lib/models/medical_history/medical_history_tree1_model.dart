import 'package:itrapp/models/medical_history/service_id_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'medical_history_tree2_model.dart';

part 'medical_history_tree1_model.freezed.dart';
part 'medical_history_tree1_model.g.dart';

@freezed
class MedicalHistoryTree1Model with _$MedicalHistoryTree1Model {
  const MedicalHistoryTree1Model._();

  factory MedicalHistoryTree1Model({
    ServiceIdModel? id,
    List<MedicalHistoryTree2Model>? datas,
  }) = _MedicalHistoryTree1Model;

  factory MedicalHistoryTree1Model.fromJson(Map<String, dynamic> json) => _$MedicalHistoryTree1ModelFromJson(json);

}