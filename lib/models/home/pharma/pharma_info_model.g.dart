// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharma_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmaInfoModel _$$_PharmaInfoModelFromJson(Map<String, dynamic> json) =>
    _$_PharmaInfoModel(
      pharmaId: json['pharma_id'] as int?,
      pharmaName: json['pharma_name'] as String?,
      quantity: json['quantity'] as num?,
      note: json['note'] as String?,
      pharmaDosage: json['pharma_dosage'] as String?,
      pharmaDosageDetail: json['pharma_dosage_detail'] as String?,
      numberAfternoon: json['number_afternoon'] as num?,
      numberMorning: json['number_morning'] as num?,
      numberNight: json['number_night'] as num?,
      numberNoon: json['number_noon'] as num?,
      numberDay: json['number_day'] as num?,
      wayToUseName: json['way_to_use_name'] as String?,
      unitName: json['unit_name'] as String?,
      currentDayTime: json['current_day_time'] as int?,
    );

Map<String, dynamic> _$$_PharmaInfoModelToJson(_$_PharmaInfoModel instance) =>
    <String, dynamic>{
      'pharma_id': instance.pharmaId,
      'pharma_name': instance.pharmaName,
      'quantity': instance.quantity,
      'note': instance.note,
      'pharma_dosage': instance.pharmaDosage,
      'pharma_dosage_detail': instance.pharmaDosageDetail,
      'number_afternoon': instance.numberAfternoon,
      'number_morning': instance.numberMorning,
      'number_night': instance.numberNight,
      'number_noon': instance.numberNoon,
      'number_day': instance.numberDay,
      'way_to_use_name': instance.wayToUseName,
      'unit_name': instance.unitName,
      'current_day_time': instance.currentDayTime,
    };
