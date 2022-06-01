// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalHistoryModel _$$_MedicalHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalHistoryModel(
      id: json['_id'] == null
          ? null
          : ServiceIdModel.fromJson(json['_id'] as Map<String, dynamic>),
      datas: (json['datas'] as List<dynamic>?)
          ?.map((e) =>
              MedicalHistoryTree1Model.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalHistoryModelToJson(
        _$_MedicalHistoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'datas': instance.datas,
    };
