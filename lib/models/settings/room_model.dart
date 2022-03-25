import 'package:freezed_annotation/freezed_annotation.dart';

import 'bed_model.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

class RoomModel with _$RoomModel {

  const RoomModel._();

  factory RoomModel({
    int? roomId,
    String? roomName,
    int? parentId,
    String? parentName,
    List<BedModel>? beds,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);
}

