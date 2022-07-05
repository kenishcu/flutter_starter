// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bed_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BedInfoModel _$BedInfoModelFromJson(Map<String, dynamic> json) {
  return _BedInfoModel.fromJson(json);
}

/// @nodoc
class _$BedInfoModelTearOff {
  const _$BedInfoModelTearOff();

  _BedInfoModel call({int? patientId, String? receptionQueueId}) {
    return _BedInfoModel(
      patientId: patientId,
      receptionQueueId: receptionQueueId,
    );
  }

  BedInfoModel fromJson(Map<String, Object?> json) {
    return BedInfoModel.fromJson(json);
  }
}

/// @nodoc
const $BedInfoModel = _$BedInfoModelTearOff();

/// @nodoc
mixin _$BedInfoModel {
  int? get patientId => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BedInfoModelCopyWith<BedInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BedInfoModelCopyWith<$Res> {
  factory $BedInfoModelCopyWith(
          BedInfoModel value, $Res Function(BedInfoModel) then) =
      _$BedInfoModelCopyWithImpl<$Res>;
  $Res call({int? patientId, String? receptionQueueId});
}

/// @nodoc
class _$BedInfoModelCopyWithImpl<$Res> implements $BedInfoModelCopyWith<$Res> {
  _$BedInfoModelCopyWithImpl(this._value, this._then);

  final BedInfoModel _value;
  // ignore: unused_field
  final $Res Function(BedInfoModel) _then;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? receptionQueueId = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BedInfoModelCopyWith<$Res>
    implements $BedInfoModelCopyWith<$Res> {
  factory _$BedInfoModelCopyWith(
          _BedInfoModel value, $Res Function(_BedInfoModel) then) =
      __$BedInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({int? patientId, String? receptionQueueId});
}

/// @nodoc
class __$BedInfoModelCopyWithImpl<$Res> extends _$BedInfoModelCopyWithImpl<$Res>
    implements _$BedInfoModelCopyWith<$Res> {
  __$BedInfoModelCopyWithImpl(
      _BedInfoModel _value, $Res Function(_BedInfoModel) _then)
      : super(_value, (v) => _then(v as _BedInfoModel));

  @override
  _BedInfoModel get _value => super._value as _BedInfoModel;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? receptionQueueId = freezed,
  }) {
    return _then(_BedInfoModel(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BedInfoModel extends _BedInfoModel {
  _$_BedInfoModel({this.patientId, this.receptionQueueId}) : super._();

  factory _$_BedInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_BedInfoModelFromJson(json);

  @override
  final int? patientId;
  @override
  final String? receptionQueueId;

  @override
  String toString() {
    return 'BedInfoModel(patientId: $patientId, receptionQueueId: $receptionQueueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BedInfoModel &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(receptionQueueId));

  @JsonKey(ignore: true)
  @override
  _$BedInfoModelCopyWith<_BedInfoModel> get copyWith =>
      __$BedInfoModelCopyWithImpl<_BedInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BedInfoModelToJson(this);
  }
}

abstract class _BedInfoModel extends BedInfoModel {
  factory _BedInfoModel({int? patientId, String? receptionQueueId}) =
      _$_BedInfoModel;
  _BedInfoModel._() : super._();

  factory _BedInfoModel.fromJson(Map<String, dynamic> json) =
      _$_BedInfoModel.fromJson;

  @override
  int? get patientId;
  @override
  String? get receptionQueueId;
  @override
  @JsonKey(ignore: true)
  _$BedInfoModelCopyWith<_BedInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
