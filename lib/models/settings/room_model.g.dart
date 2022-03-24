// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomModel _$$_RoomModelFromJson(Map<String, dynamic> json) => _$_RoomModel(
      roomId: json['roomId'] as int?,
      roomName: json['roomName'] as String?,
      parentId: json['parentId'] as int?,
      parentName: json['parentName'] as String?,
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
