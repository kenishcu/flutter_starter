// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vitality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VitalityModel _$VitalityModelFromJson(Map<String, dynamic> json) {
  return _VitalityModel.fromJson(json);
}

/// @nodoc
class _$VitalityModelTearOff {
  const _$VitalityModelTearOff();

  _VitalityModel call({List<VitalityDetailModel>? vitals}) {
    return _VitalityModel(
      vitals: vitals,
    );
  }

  VitalityModel fromJson(Map<String, Object?> json) {
    return VitalityModel.fromJson(json);
  }
}

/// @nodoc
const $VitalityModel = _$VitalityModelTearOff();

/// @nodoc
mixin _$VitalityModel {
  List<VitalityDetailModel>? get vitals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VitalityModelCopyWith<VitalityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitalityModelCopyWith<$Res> {
  factory $VitalityModelCopyWith(
          VitalityModel value, $Res Function(VitalityModel) then) =
      _$VitalityModelCopyWithImpl<$Res>;
  $Res call({List<VitalityDetailModel>? vitals});
}

/// @nodoc
class _$VitalityModelCopyWithImpl<$Res>
    implements $VitalityModelCopyWith<$Res> {
  _$VitalityModelCopyWithImpl(this._value, this._then);

  final VitalityModel _value;
  // ignore: unused_field
  final $Res Function(VitalityModel) _then;

  @override
  $Res call({
    Object? vitals = freezed,
  }) {
    return _then(_value.copyWith(
      vitals: vitals == freezed
          ? _value.vitals
          : vitals // ignore: cast_nullable_to_non_nullable
              as List<VitalityDetailModel>?,
    ));
  }
}

/// @nodoc
abstract class _$VitalityModelCopyWith<$Res>
    implements $VitalityModelCopyWith<$Res> {
  factory _$VitalityModelCopyWith(
          _VitalityModel value, $Res Function(_VitalityModel) then) =
      __$VitalityModelCopyWithImpl<$Res>;
  @override
  $Res call({List<VitalityDetailModel>? vitals});
}

/// @nodoc
class __$VitalityModelCopyWithImpl<$Res>
    extends _$VitalityModelCopyWithImpl<$Res>
    implements _$VitalityModelCopyWith<$Res> {
  __$VitalityModelCopyWithImpl(
      _VitalityModel _value, $Res Function(_VitalityModel) _then)
      : super(_value, (v) => _then(v as _VitalityModel));

  @override
  _VitalityModel get _value => super._value as _VitalityModel;

  @override
  $Res call({
    Object? vitals = freezed,
  }) {
    return _then(_VitalityModel(
      vitals: vitals == freezed
          ? _value.vitals
          : vitals // ignore: cast_nullable_to_non_nullable
              as List<VitalityDetailModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VitalityModel extends _VitalityModel {
  _$_VitalityModel({this.vitals}) : super._();

  factory _$_VitalityModel.fromJson(Map<String, dynamic> json) =>
      _$$_VitalityModelFromJson(json);

  @override
  final List<VitalityDetailModel>? vitals;

  @override
  String toString() {
    return 'VitalityModel(vitals: $vitals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VitalityModel &&
            const DeepCollectionEquality().equals(other.vitals, vitals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(vitals));

  @JsonKey(ignore: true)
  @override
  _$VitalityModelCopyWith<_VitalityModel> get copyWith =>
      __$VitalityModelCopyWithImpl<_VitalityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VitalityModelToJson(this);
  }
}

abstract class _VitalityModel extends VitalityModel {
  factory _VitalityModel({List<VitalityDetailModel>? vitals}) =
      _$_VitalityModel;
  _VitalityModel._() : super._();

  factory _VitalityModel.fromJson(Map<String, dynamic> json) =
      _$_VitalityModel.fromJson;

  @override
  List<VitalityDetailModel>? get vitals;
  @override
  @JsonKey(ignore: true)
  _$VitalityModelCopyWith<_VitalityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
