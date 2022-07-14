// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blood_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BloodTypeModel _$BloodTypeModelFromJson(Map<String, dynamic> json) {
  return _BloodTypeModel.fromJson(json);
}

/// @nodoc
class _$BloodTypeModelTearOff {
  const _$BloodTypeModelTearOff();

  _BloodTypeModel call({String? id, String? name}) {
    return _BloodTypeModel(
      id: id,
      name: name,
    );
  }

  BloodTypeModel fromJson(Map<String, Object?> json) {
    return BloodTypeModel.fromJson(json);
  }
}

/// @nodoc
const $BloodTypeModel = _$BloodTypeModelTearOff();

/// @nodoc
mixin _$BloodTypeModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BloodTypeModelCopyWith<BloodTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BloodTypeModelCopyWith<$Res> {
  factory $BloodTypeModelCopyWith(
          BloodTypeModel value, $Res Function(BloodTypeModel) then) =
      _$BloodTypeModelCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$BloodTypeModelCopyWithImpl<$Res>
    implements $BloodTypeModelCopyWith<$Res> {
  _$BloodTypeModelCopyWithImpl(this._value, this._then);

  final BloodTypeModel _value;
  // ignore: unused_field
  final $Res Function(BloodTypeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BloodTypeModelCopyWith<$Res>
    implements $BloodTypeModelCopyWith<$Res> {
  factory _$BloodTypeModelCopyWith(
          _BloodTypeModel value, $Res Function(_BloodTypeModel) then) =
      __$BloodTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$BloodTypeModelCopyWithImpl<$Res>
    extends _$BloodTypeModelCopyWithImpl<$Res>
    implements _$BloodTypeModelCopyWith<$Res> {
  __$BloodTypeModelCopyWithImpl(
      _BloodTypeModel _value, $Res Function(_BloodTypeModel) _then)
      : super(_value, (v) => _then(v as _BloodTypeModel));

  @override
  _BloodTypeModel get _value => super._value as _BloodTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_BloodTypeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BloodTypeModel extends _BloodTypeModel {
  _$_BloodTypeModel({this.id, this.name}) : super._();

  factory _$_BloodTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_BloodTypeModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'BloodTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BloodTypeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$BloodTypeModelCopyWith<_BloodTypeModel> get copyWith =>
      __$BloodTypeModelCopyWithImpl<_BloodTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BloodTypeModelToJson(this);
  }
}

abstract class _BloodTypeModel extends BloodTypeModel {
  factory _BloodTypeModel({String? id, String? name}) = _$_BloodTypeModel;
  _BloodTypeModel._() : super._();

  factory _BloodTypeModel.fromJson(Map<String, dynamic> json) =
      _$_BloodTypeModel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$BloodTypeModelCopyWith<_BloodTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
