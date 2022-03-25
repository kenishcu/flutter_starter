// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentModel _$$_DepartmentModelFromJson(Map<String, dynamic> json) =>
    _$_DepartmentModel(
      roomId: json['room_id'] as int?,
      roomName: json['room_name'] as String?,
      roomTypeId: json['room_type_id'] as int?,
      roomCode: json['room_code'] as String?,
      parentId: json['parent_id'] as int?,
      parentName: json['parent_name'] as String?,
      branchId: json['branch_id'] as int?,
      companyId: json['company_id'] as int?,
    );

Map<String, dynamic> _$$_DepartmentModelToJson(_$_DepartmentModel instance) =>
    <String, dynamic>{
      'room_id': instance.roomId,
      'room_name': instance.roomName,
      'room_type_id': instance.roomTypeId,
      'room_code': instance.roomCode,
      'parent_id': instance.parentId,
      'parent_name': instance.parentName,
      'branch_id': instance.branchId,
      'company_id': instance.companyId,
    };
