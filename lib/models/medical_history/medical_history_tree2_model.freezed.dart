// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_history_tree2_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalHistoryTree2Model _$MedicalHistoryTree2ModelFromJson(
    Map<String, dynamic> json) {
  return _MedicalHistoryTree2Model.fromJson(json);
}

/// @nodoc
class _$MedicalHistoryTree2ModelTearOff {
  const _$MedicalHistoryTree2ModelTearOff();

  _MedicalHistoryTree2Model call(
      {ServiceIdModel? id, List<MedicalMetaDataModel>? datas}) {
    return _MedicalHistoryTree2Model(
      id: id,
      datas: datas,
    );
  }

  MedicalHistoryTree2Model fromJson(Map<String, Object?> json) {
    return MedicalHistoryTree2Model.fromJson(json);
  }
}

/// @nodoc
const $MedicalHistoryTree2Model = _$MedicalHistoryTree2ModelTearOff();

/// @nodoc
mixin _$MedicalHistoryTree2Model {
  ServiceIdModel? get id => throw _privateConstructorUsedError;
  List<MedicalMetaDataModel>? get datas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalHistoryTree2ModelCopyWith<MedicalHistoryTree2Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalHistoryTree2ModelCopyWith<$Res> {
  factory $MedicalHistoryTree2ModelCopyWith(MedicalHistoryTree2Model value,
          $Res Function(MedicalHistoryTree2Model) then) =
      _$MedicalHistoryTree2ModelCopyWithImpl<$Res>;
  $Res call({ServiceIdModel? id, List<MedicalMetaDataModel>? datas});

  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class _$MedicalHistoryTree2ModelCopyWithImpl<$Res>
    implements $MedicalHistoryTree2ModelCopyWith<$Res> {
  _$MedicalHistoryTree2ModelCopyWithImpl(this._value, this._then);

  final MedicalHistoryTree2Model _value;
  // ignore: unused_field
  final $Res Function(MedicalHistoryTree2Model) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? datas = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ServiceIdModel?,
      datas: datas == freezed
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<MedicalMetaDataModel>?,
    ));
  }

  @override
  $ServiceIdModelCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $ServiceIdModelCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$MedicalHistoryTree2ModelCopyWith<$Res>
    implements $MedicalHistoryTree2ModelCopyWith<$Res> {
  factory _$MedicalHistoryTree2ModelCopyWith(_MedicalHistoryTree2Model value,
          $Res Function(_MedicalHistoryTree2Model) then) =
      __$MedicalHistoryTree2ModelCopyWithImpl<$Res>;
  @override
  $Res call({ServiceIdModel? id, List<MedicalMetaDataModel>? datas});

  @override
  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class __$MedicalHistoryTree2ModelCopyWithImpl<$Res>
    extends _$MedicalHistoryTree2ModelCopyWithImpl<$Res>
    implements _$MedicalHistoryTree2ModelCopyWith<$Res> {
  __$MedicalHistoryTree2ModelCopyWithImpl(_MedicalHistoryTree2Model _value,
      $Res Function(_MedicalHistoryTree2Model) _then)
      : super(_value, (v) => _then(v as _MedicalHistoryTree2Model));

  @override
  _MedicalHistoryTree2Model get _value =>
      super._value as _MedicalHistoryTree2Model;

  @override
  $Res call({
    Object? id = freezed,
    Object? datas = freezed,
  }) {
    return _then(_MedicalHistoryTree2Model(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ServiceIdModel?,
      datas: datas == freezed
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<MedicalMetaDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalHistoryTree2Model extends _MedicalHistoryTree2Model {
  _$_MedicalHistoryTree2Model({this.id, this.datas}) : super._();

  factory _$_MedicalHistoryTree2Model.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalHistoryTree2ModelFromJson(json);

  @override
  final ServiceIdModel? id;
  @override
  final List<MedicalMetaDataModel>? datas;

  @override
  String toString() {
    return 'MedicalHistoryTree2Model(id: $id, datas: $datas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalHistoryTree2Model &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.datas, datas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(datas));

  @JsonKey(ignore: true)
  @override
  _$MedicalHistoryTree2ModelCopyWith<_MedicalHistoryTree2Model> get copyWith =>
      __$MedicalHistoryTree2ModelCopyWithImpl<_MedicalHistoryTree2Model>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalHistoryTree2ModelToJson(this);
  }
}

abstract class _MedicalHistoryTree2Model extends MedicalHistoryTree2Model {
  factory _MedicalHistoryTree2Model(
      {ServiceIdModel? id,
      List<MedicalMetaDataModel>? datas}) = _$_MedicalHistoryTree2Model;
  _MedicalHistoryTree2Model._() : super._();

  factory _MedicalHistoryTree2Model.fromJson(Map<String, dynamic> json) =
      _$_MedicalHistoryTree2Model.fromJson;

  @override
  ServiceIdModel? get id;
  @override
  List<MedicalMetaDataModel>? get datas;
  @override
  @JsonKey(ignore: true)
  _$MedicalHistoryTree2ModelCopyWith<_MedicalHistoryTree2Model> get copyWith =>
      throw _privateConstructorUsedError;
}
