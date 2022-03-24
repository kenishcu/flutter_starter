// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentModel _$$_DepartmentModelFromJson(Map<String, dynamic> json) =>
    _$_DepartmentModel(
      roomId: json['roomId'] as int?,
      roomName: json['roomName'] as String?,
      roomTypeId: json['roomTypeId'] as int?,
      roomCode: json['roomCode'] as String?,
      parentId: json['parentId'] as int?,
      parentName: json['parentName'] as String?,
      branchId: json['branchId'] as int?,
      companyId: json['companyId'] as int?,
    );

Map<String, dynamic> _$$_DepartmentModelToJson(_$_DepartmentModel instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'roomTypeId': instance.roomTypeId,
      'roomCode': instance.roomCode,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'branchId': instance.branchId,
      'companyId': instance.companyId,
    };
