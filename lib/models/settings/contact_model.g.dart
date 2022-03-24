// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactModel _$$_ContactModelFromJson(Map<String, dynamic> json) =>
    _$_ContactModel(
      id: json['id'] as String?,
      hotLineName: json['hotLineName'] as String?,
      hotLineNumber: json['hotLineNumber'] as int?,
      parentId: json['parentId'] as int?,
      parentName: json['parentName'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_ContactModelToJson(_$_ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotLineName': instance.hotLineName,
      'hotLineNumber': instance.hotLineNumber,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'status': instance.status,
    };
