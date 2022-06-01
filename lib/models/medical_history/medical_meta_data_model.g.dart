// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_meta_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalMetaDataModel _$$_MedicalMetaDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalMetaDataModel(
      id: json['_id'] == null
          ? null
          : ServiceIdModel.fromJson(json['_id'] as Map<String, dynamic>),
      datas: (json['datas'] as List<dynamic>?)
          ?.map((e) => MedicalDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalMetaDataModelToJson(
        _$_MedicalMetaDataModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'datas': instance.datas,
    };
