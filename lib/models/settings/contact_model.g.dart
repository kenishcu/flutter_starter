// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactModel _$$_ContactModelFromJson(Map<String, dynamic> json) =>
    _$_ContactModel(
      id: json['id'] as String?,
      hotLineName: json['hotline_name'] as String?,
      hotLineNumber: json['hotline_number'] as int?,
      parentId: json['parent_id'] as int?,
      parentName: json['parent_name'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotline_name': instance.hotLineName,
      'hotline_number': instance.hotLineNumber,
      'parent_id': instance.parentId,
      'parent_name': instance.parentName,
      'status': instance.status,
    };
