// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vitality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VitalityModel _$$_VitalityModelFromJson(Map<String, dynamic> json) {

  if(json == null) {
    return null;
  }

  var keys = json.keys;
  List<VitalityDetailModel> vitality = [];
  for (var kv in keys) {
    vitality.add(VitalityDetailModel.fromJson(json[kv]));
  }
  // (json['vitality'] as List<dynamic>?)
  //     ?.map((e) => VitalityDetailModel.fromJson(e as Map<String, dynamic>))
  //     .toList()
  _$_VitalityModel(
    vitality: vitality,
  );

}

Map<String, dynamic> _$$_VitalityModelToJson(_$_VitalityModel instance) =>
    <String, dynamic>{
      'vitality': instance.vitality,
    };
