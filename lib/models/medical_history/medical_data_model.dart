import 'package:flutter_stater/models/medical_history/service_data_model.dart';
import 'package:flutter_stater/models/medical_history/service_id_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_data_model.freezed.dart';
part 'medical_data_model.g.dart';

@freezed
class MedicalDataModel  with _$MedicalDataModel{
  const MedicalDataModel._();

  factory MedicalDataModel({
    ServiceIdModel? id,
    List<ServiceDataModel>? datas,
  }) = _MedicalDataModel;

  factory MedicalDataModel.fromJson(Map<String, dynamic> json) => _$MedicalDataModelFromJson(json);

}