// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_blood_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedBloodTypeModel _$SelectedBloodTypeModelFromJson(
    Map<String, dynamic> json) {
  return _SelectedBloodTypeModel.fromJson(json);
}

/// @nodoc
class _$SelectedBloodTypeModelTearOff {
  const _$SelectedBloodTypeModelTearOff();

  _SelectedBloodTypeModel call({int? id, String? name}) {
    return _SelectedBloodTypeModel(
      id: id,
      name: name,
    );
  }

  SelectedBloodTypeModel fromJson(Map<String, Object?> json) {
    return SelectedBloodTypeModel.fromJson(json);
  }
}

/// @nodoc
const $SelectedBloodTypeModel = _$SelectedBloodTypeModelTearOff();

/// @nodoc
mixin _$SelectedBloodTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedBloodTypeModelCopyWith<SelectedBloodTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedBloodTypeModelCopyWith<$Res> {
  factory $SelectedBloodTypeModelCopyWith(SelectedBloodTypeModel value,
          $Res Function(SelectedBloodTypeModel) then) =
      _$SelectedBloodTypeModelCopyWithImpl<$Res>;
  $Res call({int? id, String? name});
}

/// @nodoc
class _$SelectedBloodTypeModelCopyWithImpl<$Res>
    implements $SelectedBloodTypeModelCopyWith<$Res> {
  _$SelectedBloodTypeModelCopyWithImpl(this._value, this._then);

  final SelectedBloodTypeModel _value;
  // ignore: unused_field
  final $Res Function(SelectedBloodTypeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SelectedBloodTypeModelCopyWith<$Res>
    implements $SelectedBloodTypeModelCopyWith<$Res> {
  factory _$SelectedBloodTypeModelCopyWith(_SelectedBloodTypeModel value,
          $Res Function(_SelectedBloodTypeModel) then) =
      __$SelectedBloodTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name});
}

/// @nodoc
class __$SelectedBloodTypeModelCopyWithImpl<$Res>
    extends _$SelectedBloodTypeModelCopyWithImpl<$Res>
    implements _$SelectedBloodTypeModelCopyWith<$Res> {
  __$SelectedBloodTypeModelCopyWithImpl(_SelectedBloodTypeModel _value,
      $Res Function(_SelectedBloodTypeModel) _then)
      : super(_value, (v) => _then(v as _SelectedBloodTypeModel));

  @override
  _SelectedBloodTypeModel get _value => super._value as _SelectedBloodTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_SelectedBloodTypeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedBloodTypeModel extends _SelectedBloodTypeModel {
  _$_SelectedBloodTypeModel({this.id, this.name}) : super._();

  factory _$_SelectedBloodTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedBloodTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SelectedBloodTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectedBloodTypeModel &&
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
  _$SelectedBloodTypeModelCopyWith<_SelectedBloodTypeModel> get copyWith =>
      __$SelectedBloodTypeModelCopyWithImpl<_SelectedBloodTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedBloodTypeModelToJson(this);
  }
}

abstract class _SelectedBloodTypeModel extends SelectedBloodTypeModel {
  factory _SelectedBloodTypeModel({int? id, String? name}) =
      _$_SelectedBloodTypeModel;
  _SelectedBloodTypeModel._() : super._();

  factory _SelectedBloodTypeModel.fromJson(Map<String, dynamic> json) =
      _$_SelectedBloodTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$SelectedBloodTypeModelCopyWith<_SelectedBloodTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
