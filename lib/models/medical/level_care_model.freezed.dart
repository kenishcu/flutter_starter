// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'level_care_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LevelCareModel _$LevelCareModelFromJson(Map<String, dynamic> json) {
  return _LevelCareModel.fromJson(json);
}

/// @nodoc
class _$LevelCareModelTearOff {
  const _$LevelCareModelTearOff();

  _LevelCareModel call(
      {int? levelCareId, String? levelCareCode, String? levelCareName}) {
    return _LevelCareModel(
      levelCareId: levelCareId,
      levelCareCode: levelCareCode,
      levelCareName: levelCareName,
    );
  }

  LevelCareModel fromJson(Map<String, Object?> json) {
    return LevelCareModel.fromJson(json);
  }
}

/// @nodoc
const $LevelCareModel = _$LevelCareModelTearOff();

/// @nodoc
mixin _$LevelCareModel {
  int? get levelCareId => throw _privateConstructorUsedError;
  String? get levelCareCode => throw _privateConstructorUsedError;
  String? get levelCareName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelCareModelCopyWith<LevelCareModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCareModelCopyWith<$Res> {
  factory $LevelCareModelCopyWith(
          LevelCareModel value, $Res Function(LevelCareModel) then) =
      _$LevelCareModelCopyWithImpl<$Res>;
  $Res call({int? levelCareId, String? levelCareCode, String? levelCareName});
}

/// @nodoc
class _$LevelCareModelCopyWithImpl<$Res>
    implements $LevelCareModelCopyWith<$Res> {
  _$LevelCareModelCopyWithImpl(this._value, this._then);

  final LevelCareModel _value;
  // ignore: unused_field
  final $Res Function(LevelCareModel) _then;

  @override
  $Res call({
    Object? levelCareId = freezed,
    Object? levelCareCode = freezed,
    Object? levelCareName = freezed,
  }) {
    return _then(_value.copyWith(
      levelCareId: levelCareId == freezed
          ? _value.levelCareId
          : levelCareId // ignore: cast_nullable_to_non_nullable
              as int?,
      levelCareCode: levelCareCode == freezed
          ? _value.levelCareCode
          : levelCareCode // ignore: cast_nullable_to_non_nullable
              as String?,
      levelCareName: levelCareName == freezed
          ? _value.levelCareName
          : levelCareName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LevelCareModelCopyWith<$Res>
    implements $LevelCareModelCopyWith<$Res> {
  factory _$LevelCareModelCopyWith(
          _LevelCareModel value, $Res Function(_LevelCareModel) then) =
      __$LevelCareModelCopyWithImpl<$Res>;
  @override
  $Res call({int? levelCareId, String? levelCareCode, String? levelCareName});
}

/// @nodoc
class __$LevelCareModelCopyWithImpl<$Res>
    extends _$LevelCareModelCopyWithImpl<$Res>
    implements _$LevelCareModelCopyWith<$Res> {
  __$LevelCareModelCopyWithImpl(
      _LevelCareModel _value, $Res Function(_LevelCareModel) _then)
      : super(_value, (v) => _then(v as _LevelCareModel));

  @override
  _LevelCareModel get _value => super._value as _LevelCareModel;

  @override
  $Res call({
    Object? levelCareId = freezed,
    Object? levelCareCode = freezed,
    Object? levelCareName = freezed,
  }) {
    return _then(_LevelCareModel(
      levelCareId: levelCareId == freezed
          ? _value.levelCareId
          : levelCareId // ignore: cast_nullable_to_non_nullable
              as int?,
      levelCareCode: levelCareCode == freezed
          ? _value.levelCareCode
          : levelCareCode // ignore: cast_nullable_to_non_nullable
              as String?,
      levelCareName: levelCareName == freezed
          ? _value.levelCareName
          : levelCareName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LevelCareModel extends _LevelCareModel {
  _$_LevelCareModel({this.levelCareId, this.levelCareCode, this.levelCareName})
      : super._();

  factory _$_LevelCareModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelCareModelFromJson(json);

  @override
  final int? levelCareId;
  @override
  final String? levelCareCode;
  @override
  final String? levelCareName;

  @override
  String toString() {
    return 'LevelCareModel(levelCareId: $levelCareId, levelCareCode: $levelCareCode, levelCareName: $levelCareName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LevelCareModel &&
            const DeepCollectionEquality()
                .equals(other.levelCareId, levelCareId) &&
            const DeepCollectionEquality()
                .equals(other.levelCareCode, levelCareCode) &&
            const DeepCollectionEquality()
                .equals(other.levelCareName, levelCareName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(levelCareId),
      const DeepCollectionEquality().hash(levelCareCode),
      const DeepCollectionEquality().hash(levelCareName));

  @JsonKey(ignore: true)
  @override
  _$LevelCareModelCopyWith<_LevelCareModel> get copyWith =>
      __$LevelCareModelCopyWithImpl<_LevelCareModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelCareModelToJson(this);
  }
}

abstract class _LevelCareModel extends LevelCareModel {
  factory _LevelCareModel(
      {int? levelCareId,
      String? levelCareCode,
      String? levelCareName}) = _$_LevelCareModel;
  _LevelCareModel._() : super._();

  factory _LevelCareModel.fromJson(Map<String, dynamic> json) =
      _$_LevelCareModel.fromJson;

  @override
  int? get levelCareId;
  @override
  String? get levelCareCode;
  @override
  String? get levelCareName;
  @override
  @JsonKey(ignore: true)
  _$LevelCareModelCopyWith<_LevelCareModel> get copyWith =>
      throw _privateConstructorUsedError;
}
