// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$$_MenuModelFromJson(Map<String, dynamic> json) => _$_MenuModel(
      id: json['_id'] as String?,
      menuCalendarDailyCode: json['menu_calendar_daily_code'] as String?,
      menuCalendarDailyName: json['menu_calendar_daily_name'] as String?,
      orderType: json['order_type'] as String?,
      lang: json['lang'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'menu_calendar_daily_code': instance.menuCalendarDailyCode,
      'menu_calendar_daily_name': instance.menuCalendarDailyName,
      'order_type': instance.orderType,
      'lang': instance.lang,
    };
