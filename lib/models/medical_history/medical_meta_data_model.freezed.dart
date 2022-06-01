// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_meta_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalMetaDataModel _$MedicalMetaDataModelFromJson(Map<String, dynamic> json) {
  return _MedicalMetaDataModel.fromJson(json);
}

/// @nodoc
class _$MedicalMetaDataModelTearOff {
  const _$MedicalMetaDataModelTearOff();

  _MedicalMetaDataModel call(
      {ServiceIdModel? id, List<MedicalDataModel>? datas}) {
    return _MedicalMetaDataModel(
      id: id,
      datas: datas,
    );
  }

  MedicalMetaDataModel fromJson(Map<String, Object?> json) {
    return MedicalMetaDataModel.fromJson(json);
  }
}

/// @nodoc
const $MedicalMetaDataModel = _$MedicalMetaDataModelTearOff();

/// @nodoc
mixin _$MedicalMetaDataModel {
  ServiceIdModel? get id => throw _privateConstructorUsedError;
  List<MedicalDataModel>? get datas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalMetaDataModelCopyWith<MedicalMetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalMetaDataModelCopyWith<$Res> {
  factory $MedicalMetaDataModelCopyWith(MedicalMetaDataModel value,
          $Res Function(MedicalMetaDataModel) then) =
      _$MedicalMetaDataModelCopyWithImpl<$Res>;
  $Res call({ServiceIdModel? id, List<MedicalDataModel>? datas});

  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class _$MedicalMetaDataModelCopyWithImpl<$Res>
    implements $MedicalMetaDataModelCopyWith<$Res> {
  _$MedicalMetaDataModelCopyWithImpl(this._value, this._then);

  final MedicalMetaDataModel _value;
  // ignore: unused_field
  final $Res Function(MedicalMetaDataModel) _then;

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
              as List<MedicalDataModel>?,
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
abstract class _$MedicalMetaDataModelCopyWith<$Res>
    implements $MedicalMetaDataModelCopyWith<$Res> {
  factory _$MedicalMetaDataModelCopyWith(_MedicalMetaDataModel value,
          $Res Function(_MedicalMetaDataModel) then) =
      __$MedicalMetaDataModelCopyWithImpl<$Res>;
  @override
  $Res call({ServiceIdModel? id, List<MedicalDataModel>? datas});

  @override
  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class __$MedicalMetaDataModelCopyWithImpl<$Res>
    extends _$MedicalMetaDataModelCopyWithImpl<$Res>
    implements _$MedicalMetaDataModelCopyWith<$Res> {
  __$MedicalMetaDataModelCopyWithImpl(
      _MedicalMetaDataModel _value, $Res Function(_MedicalMetaDataModel) _then)
      : super(_value, (v) => _then(v as _MedicalMetaDataModel));

  @override
  _MedicalMetaDataModel get _value => super._value as _MedicalMetaDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? datas = freezed,
  }) {
    return _then(_MedicalMetaDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ServiceIdModel?,
      datas: datas == freezed
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<MedicalDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalMetaDataModel extends _MedicalMetaDataModel {
  _$_MedicalMetaDataModel({this.id, this.datas}) : super._();

  factory _$_MedicalMetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalMetaDataModelFromJson(json);

  @override
  final ServiceIdModel? id;
  @override
  final List<MedicalDataModel>? datas;

  @override
  String toString() {
    return 'MedicalMetaDataModel(id: $id, datas: $datas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalMetaDataModel &&
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
  _$MedicalMetaDataModelCopyWith<_MedicalMetaDataModel> get copyWith =>
      __$MedicalMetaDataModelCopyWithImpl<_MedicalMetaDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalMetaDataModelToJson(this);
  }
}

abstract class _MedicalMetaDataModel extends MedicalMetaDataModel {
  factory _MedicalMetaDataModel(
      {ServiceIdModel? id,
      List<MedicalDataModel>? datas}) = _$_MedicalMetaDataModel;
  _MedicalMetaDataModel._() : super._();

  factory _MedicalMetaDataModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalMetaDataModel.fromJson;

  @override
  ServiceIdModel? get id;
  @override
  List<MedicalDataModel>? get datas;
  @override
  @JsonKey(ignore: true)
  _$MedicalMetaDataModelCopyWith<_MedicalMetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
