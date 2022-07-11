import 'package:itrapp/models/medical_history/service_id_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'medical_meta_data_model.dart';


part 'medical_history_tree2_model.freezed.dart';
part 'medical_history_tree2_model.g.dart';

@freezed
class MedicalHistoryTree2Model with _$MedicalHistoryTree2Model {
  const MedicalHistoryTree2Model._();

  factory MedicalHistoryTree2Model({
    ServiceIdModel? id,
    List<MedicalMetaDataModel>? datas,
  }) = _MedicalHistoryTree2Model;

  factory MedicalHistoryTree2Model.fromJson(Map<String, dynamic> json) => _$MedicalHistoryTree2ModelFromJson(json);

}