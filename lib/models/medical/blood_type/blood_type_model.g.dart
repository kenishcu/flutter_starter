// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blood_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BloodTypeModel _$$_BloodTypeModelFromJson(Map<String, dynamic> json) =>
    _$_BloodTypeModel(
      bloodType: json['bloodType'] == null
          ? null
          : SelectedBloodTypeModel.fromJson(
              json['bloodType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BloodTypeModelToJson(_$_BloodTypeModel instance) =>
    <String, dynamic>{
      'bloodType': instance.bloodType,
    };
