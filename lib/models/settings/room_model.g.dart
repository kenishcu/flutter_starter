// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomModel _$$_RoomModelFromJson(Map<String, dynamic> json) => _$_RoomModel(
      roomId: json['room_id'] as int?,
      roomName: json['room_name'] as String?,
      parentId: json['parent_id'] as int?,
      parentName: json['parent_name'] as String?,
      beds: (json['beds'] as List<dynamic>?)
          ?.map((e) => BedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomModelToJson(_$_RoomModel instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'parentId': instance.parentId,
      'parentName': instance.parentName,
      'beds': instance.beds,
    };
