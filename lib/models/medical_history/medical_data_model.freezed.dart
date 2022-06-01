// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalDataModel _$MedicalDataModelFromJson(Map<String, dynamic> json) {
  return _MedicalDataModel.fromJson(json);
}

/// @nodoc
class _$MedicalDataModelTearOff {
  const _$MedicalDataModelTearOff();

  _MedicalDataModel call({ServiceIdModel? id, List<ServiceDataModel>? datas}) {
    return _MedicalDataModel(
      id: id,
      datas: datas,
    );
  }

  MedicalDataModel fromJson(Map<String, Object?> json) {
    return MedicalDataModel.fromJson(json);
  }
}

/// @nodoc
const $MedicalDataModel = _$MedicalDataModelTearOff();

/// @nodoc
mixin _$MedicalDataModel {
  ServiceIdModel? get id => throw _privateConstructorUsedError;
  List<ServiceDataModel>? get datas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalDataModelCopyWith<MedicalDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalDataModelCopyWith<$Res> {
  factory $MedicalDataModelCopyWith(
          MedicalDataModel value, $Res Function(MedicalDataModel) then) =
      _$MedicalDataModelCopyWithImpl<$Res>;
  $Res call({ServiceIdModel? id, List<ServiceDataModel>? datas});

  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class _$MedicalDataModelCopyWithImpl<$Res>
    implements $MedicalDataModelCopyWith<$Res> {
  _$MedicalDataModelCopyWithImpl(this._value, this._then);

  final MedicalDataModel _value;
  // ignore: unused_field
  final $Res Function(MedicalDataModel) _then;

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
              as List<ServiceDataModel>?,
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
abstract class _$MedicalDataModelCopyWith<$Res>
    implements $MedicalDataModelCopyWith<$Res> {
  factory _$MedicalDataModelCopyWith(
          _MedicalDataModel value, $Res Function(_MedicalDataModel) then) =
      __$MedicalDataModelCopyWithImpl<$Res>;
  @override
  $Res call({ServiceIdModel? id, List<ServiceDataModel>? datas});

  @override
  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class __$MedicalDataModelCopyWithImpl<$Res>
    extends _$MedicalDataModelCopyWithImpl<$Res>
    implements _$MedicalDataModelCopyWith<$Res> {
  __$MedicalDataModelCopyWithImpl(
      _MedicalDataModel _value, $Res Function(_MedicalDataModel) _then)
      : super(_value, (v) => _then(v as _MedicalDataModel));

  @override
  _MedicalDataModel get _value => super._value as _MedicalDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? datas = freezed,
  }) {
    return _then(_MedicalDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ServiceIdModel?,
      datas: datas == freezed
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<ServiceDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalDataModel extends _MedicalDataModel {
  _$_MedicalDataModel({this.id, this.datas}) : super._();

  factory _$_MedicalDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalDataModelFromJson(json);

  @override
  final ServiceIdModel? id;
  @override
  final List<ServiceDataModel>? datas;

  @override
  String toString() {
    return 'MedicalDataModel(id: $id, datas: $datas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalDataModel &&
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
  _$MedicalDataModelCopyWith<_MedicalDataModel> get copyWith =>
      __$MedicalDataModelCopyWithImpl<_MedicalDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalDataModelToJson(this);
  }
}

abstract class _MedicalDataModel extends MedicalDataModel {
  factory _MedicalDataModel(
      {ServiceIdModel? id,
      List<ServiceDataModel>? datas}) = _$_MedicalDataModel;
  _MedicalDataModel._() : super._();

  factory _MedicalDataModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalDataModel.fromJson;

  @override
  ServiceIdModel? get id;
  @override
  List<ServiceDataModel>? get datas;
  @override
  @JsonKey(ignore: true)
  _$MedicalDataModelCopyWith<_MedicalDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
