// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
class _$RoomModelTearOff {
  const _$RoomModelTearOff();

  _RoomModel call(
      {int? roomId,
      String? roomName,
      int? parentId,
      String? parentName,
      List<BedModel>? beds}) {
    return _RoomModel(
      roomId: roomId,
      roomName: roomName,
      parentId: parentId,
      parentName: parentName,
      beds: beds,
    );
  }

  RoomModel fromJson(Map<String, Object?> json) {
    return RoomModel.fromJson(json);
  }
}

/// @nodoc
const $RoomModel = _$RoomModelTearOff();

/// @nodoc
mixin _$RoomModel {
  int? get roomId => throw _privateConstructorUsedError;
  String? get roomName => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  String? get parentName => throw _privateConstructorUsedError;
  List<BedModel>? get beds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res>;
  $Res call(
      {int? roomId,
      String? roomName,
      int? parentId,
      String? parentName,
      List<BedModel>? beds});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res> implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  final RoomModel _value;
  // ignore: unused_field
  final $Res Function(RoomModel) _then;

  @override
  $Res call({
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? parentId = freezed,
    Object? parentName = freezed,
    Object? beds = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: beds == freezed
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as List<BedModel>?,
    ));
  }
}

/// @nodoc
abstract class _$RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$RoomModelCopyWith(
          _RoomModel value, $Res Function(_RoomModel) then) =
      __$RoomModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? roomId,
      String? roomName,
      int? parentId,
      String? parentName,
      List<BedModel>? beds});
}

/// @nodoc
class __$RoomModelCopyWithImpl<$Res> extends _$RoomModelCopyWithImpl<$Res>
    implements _$RoomModelCopyWith<$Res> {
  __$RoomModelCopyWithImpl(_RoomModel _value, $Res Function(_RoomModel) _then)
      : super(_value, (v) => _then(v as _RoomModel));

  @override
  _RoomModel get _value => super._value as _RoomModel;

  @override
  $Res call({
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? parentId = freezed,
    Object? parentName = freezed,
    Object? beds = freezed,
  }) {
    return _then(_RoomModel(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      beds: beds == freezed
          ? _value.beds
          : beds // ignore: cast_nullable_to_non_nullable
              as List<BedModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomModel extends _RoomModel {
  _$_RoomModel(
      {this.roomId, this.roomName, this.parentId, this.parentName, this.beds})
      : super._();

  factory _$_RoomModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoomModelFromJson(json);

  @override
  final int? roomId;
  @override
  final String? roomName;
  @override
  final int? parentId;
  @override
  final String? parentName;
  @override
  final List<BedModel>? beds;

  @override
  String toString() {
    return 'RoomModel(roomId: $roomId, roomName: $roomName, parentId: $parentId, parentName: $parentName, beds: $beds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomModel &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.parentName, parentName) &&
            const DeepCollectionEquality().equals(other.beds, beds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(parentName),
      const DeepCollectionEquality().hash(beds));

  @JsonKey(ignore: true)
  @override
  _$RoomModelCopyWith<_RoomModel> get copyWith =>
      __$RoomModelCopyWithImpl<_RoomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomModelToJson(this);
  }
}

abstract class _RoomModel extends RoomModel {
  factory _RoomModel(
      {int? roomId,
      String? roomName,
      int? parentId,
      String? parentName,
      List<BedModel>? beds}) = _$_RoomModel;
  _RoomModel._() : super._();

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$_RoomModel.fromJson;

  @override
  int? get roomId;
  @override
  String? get roomName;
  @override
  int? get parentId;
  @override
  String? get parentName;
  @override
  List<BedModel>? get beds;
  @override
  @JsonKey(ignore: true)
  _$RoomModelCopyWith<_RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
