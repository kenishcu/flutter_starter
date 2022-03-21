// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BedModel _$BedModelFromJson(Map<String, dynamic> json) {
  return _BedModel.fromJson(json);
}

/// @nodoc
class _$BedModelTearOff {
  const _$BedModelTearOff();

  _BedModel call({int? bedId, String? bedName}) {
    return _BedModel(
      bedId: bedId,
      bedName: bedName,
    );
  }

  BedModel fromJson(Map<String, Object?> json) {
    return BedModel.fromJson(json);
  }
}

/// @nodoc
const $BedModel = _$BedModelTearOff();

/// @nodoc
mixin _$BedModel {
  int? get bedId => throw _privateConstructorUsedError;
  String? get bedName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BedModelCopyWith<BedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BedModelCopyWith<$Res> {
  factory $BedModelCopyWith(BedModel value, $Res Function(BedModel) then) =
      _$BedModelCopyWithImpl<$Res>;
  $Res call({int? bedId, String? bedName});
}

/// @nodoc
class _$BedModelCopyWithImpl<$Res> implements $BedModelCopyWith<$Res> {
  _$BedModelCopyWithImpl(this._value, this._then);

  final BedModel _value;
  // ignore: unused_field
  final $Res Function(BedModel) _then;

  @override
  $Res call({
    Object? bedId = freezed,
    Object? bedName = freezed,
  }) {
    return _then(_value.copyWith(
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
              as int?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BedModelCopyWith<$Res> implements $BedModelCopyWith<$Res> {
  factory _$BedModelCopyWith(_BedModel value, $Res Function(_BedModel) then) =
      __$BedModelCopyWithImpl<$Res>;
  @override
  $Res call({int? bedId, String? bedName});
}

/// @nodoc
class __$BedModelCopyWithImpl<$Res> extends _$BedModelCopyWithImpl<$Res>
    implements _$BedModelCopyWith<$Res> {
  __$BedModelCopyWithImpl(_BedModel _value, $Res Function(_BedModel) _then)
      : super(_value, (v) => _then(v as _BedModel));

  @override
  _BedModel get _value => super._value as _BedModel;

  @override
  $Res call({
    Object? bedId = freezed,
    Object? bedName = freezed,
  }) {
    return _then(_BedModel(
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
              as int?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BedModel extends _BedModel {
  _$_BedModel({this.bedId, this.bedName}) : super._();

  factory _$_BedModel.fromJson(Map<String, dynamic> json) =>
      _$$_BedModelFromJson(json);

  @override
  final int? bedId;
  @override
  final String? bedName;

  @override
  String toString() {
    return 'BedModel(bedId: $bedId, bedName: $bedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BedModel &&
            const DeepCollectionEquality().equals(other.bedId, bedId) &&
            const DeepCollectionEquality().equals(other.bedName, bedName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bedId),
      const DeepCollectionEquality().hash(bedName));

  @JsonKey(ignore: true)
  @override
  _$BedModelCopyWith<_BedModel> get copyWith =>
      __$BedModelCopyWithImpl<_BedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BedModelToJson(this);
  }
}

abstract class _BedModel extends BedModel {
  factory _BedModel({int? bedId, String? bedName}) = _$_BedModel;
  _BedModel._() : super._();

  factory _BedModel.fromJson(Map<String, dynamic> json) = _$_BedModel.fromJson;

  @override
  int? get bedId;
  @override
  String? get bedName;
  @override
  @JsonKey(ignore: true)
  _$BedModelCopyWith<_BedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
