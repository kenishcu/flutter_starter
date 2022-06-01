// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history_tree1_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalHistoryTree1Model _$$_MedicalHistoryTree1ModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalHistoryTree1Model(
      id: json['_id'] == null
          ? null
          : ServiceIdModel.fromJson(json['_id'] as Map<String, dynamic>),
      datas: (json['datas'] as List<dynamic>?)
          ?.map((e) =>
              MedicalHistoryTree2Model.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalHistoryTree1ModelToJson(
        _$_MedicalHistoryTree1Model instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'datas': instance.datas,
    };
