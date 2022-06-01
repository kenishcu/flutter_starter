// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalDataModel _$$_MedicalDataModelFromJson(Map<String, dynamic> json) =>
    _$_MedicalDataModel(
      id: json['_id'] == null
          ? null
          : ServiceIdModel.fromJson(json['_id'] as Map<String, dynamic>),
      datas: (json['datas'] as List<dynamic>?)
          ?.map((e) => ServiceDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalDataModelToJson(_$_MedicalDataModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'datas': instance.datas,
    };
