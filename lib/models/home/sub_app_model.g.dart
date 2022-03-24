// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_app_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubAppModel _$$_SubAppModelFromJson(Map<String, dynamic> json) =>
    _$_SubAppModel(
      id: json['id'] as int?,
      categoryCode: json['categoryCode'] as String?,
      categoryName: json['categoryName'] as int?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_SubAppModelToJson(_$_SubAppModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryCode': instance.categoryCode,
      'categoryName': instance.categoryName,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': instance.status,
    };
