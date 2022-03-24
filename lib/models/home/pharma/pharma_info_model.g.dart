// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharma_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmaInfoModel _$$_PharmaInfoModelFromJson(Map<String, dynamic> json) =>
    _$_PharmaInfoModel(
      pharmaId: json['pharmaId'] as int?,
      pharmaName: json['pharmaName'] as String?,
      quantity: json['quantity'] as num?,
      note: json['note'] as String?,
      pharmaDosage: json['pharmaDosage'] as String?,
      pharmaDosageDetail: json['pharmaDosageDetail'] as String?,
      numberAfternoon: json['numberAfternoon'] as num?,
      numberMorning: json['numberMorning'] as num?,
      numberNight: json['numberNight'] as num?,
      numberNoon: json['numberNoon'] as num?,
      numberDay: json['numberDay'] as num?,
      wayToUseName: json['wayToUseName'] as String?,
      unitName: json['unitName'] as String?,
      currentDayTime: json['currentDayTime'] == null
          ? null
          : DateTime.parse(json['currentDayTime'] as String),
    );

Map<String, dynamic> _$$_PharmaInfoModelToJson(_$_PharmaInfoModel instance) =>
    <String, dynamic>{
      'pharmaId': instance.pharmaId,
      'pharmaName': instance.pharmaName,
      'quantity': instance.quantity,
      'note': instance.note,
      'pharmaDosage': instance.pharmaDosage,
      'pharmaDosageDetail': instance.pharmaDosageDetail,
      'numberAfternoon': instance.numberAfternoon,
      'numberMorning': instance.numberMorning,
      'numberNight': instance.numberNight,
      'numberNoon': instance.numberNoon,
      'numberDay': instance.numberDay,
      'wayToUseName': instance.wayToUseName,
      'unitName': instance.unitName,
      'currentDayTime': instance.currentDayTime?.toIso8601String(),
    };
