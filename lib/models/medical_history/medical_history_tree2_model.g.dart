// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history_tree2_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalHistoryTree2Model _$$_MedicalHistoryTree2ModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalHistoryTree2Model(
      id: json['_id'] == null
          ? null
          : ServiceIdModel.fromJson(json['_id'] as Map<String, dynamic>),
      datas: (json['datas'] as List<dynamic>?)
          ?.map((e) => MedicalMetaDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalHistoryTree2ModelToJson(
        _$_MedicalHistoryTree2Model instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'datas': instance.datas,
    };
