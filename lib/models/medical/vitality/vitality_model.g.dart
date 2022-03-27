// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VitalityModel _$$_VitalityModelFromJson(Map<String, dynamic> json) =>
    _$_VitalityModel(
      vitals: (json['vitals'] as List<dynamic>?)
          ?.map((e) => VitalityDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VitalityModelToJson(_$_VitalityModel instance) =>
    <String, dynamic>{
      'vitals': instance.vitals,
    };
