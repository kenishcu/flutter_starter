import 'package:flutter_stater/models/medical_history/service_id_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'medical_data_model.dart';

part 'medical_meta_data_model.freezed.dart';
part 'medical_meta_data_model.g.dart';

@freezed
class MedicalMetaDataModel  with _$MedicalMetaDataModel {
  const MedicalMetaDataModel._();

  factory MedicalMetaDataModel({
    ServiceIdModel? id,
    List<MedicalDataModel>? datas,
  }) = _MedicalMetaDataModel;

  factory MedicalMetaDataModel.fromJson(Map<String, dynamic> json) => _$MedicalMetaDataModelFromJson(json);

}