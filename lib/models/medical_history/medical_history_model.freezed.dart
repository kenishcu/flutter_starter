// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalHistoryModel _$MedicalHistoryModelFromJson(Map<String, dynamic> json) {
  return _MedicalHistoryModel.fromJson(json);
}

/// @nodoc
class _$MedicalHistoryModelTearOff {
  const _$MedicalHistoryModelTearOff();

  _MedicalHistoryModel call(
      {ServiceIdModel? id, List<MedicalHistoryTree1Model>? datas}) {
    return _MedicalHistoryModel(
      id: id,
      datas: datas,
    );
  }

  MedicalHistoryModel fromJson(Map<String, Object?> json) {
    return MedicalHistoryModel.fromJson(json);
  }
}

/// @nodoc
const $MedicalHistoryModel = _$MedicalHistoryModelTearOff();

/// @nodoc
mixin _$MedicalHistoryModel {
  ServiceIdModel? get id => throw _privateConstructorUsedError;
  List<MedicalHistoryTree1Model>? get datas =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalHistoryModelCopyWith<MedicalHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalHistoryModelCopyWith<$Res> {
  factory $MedicalHistoryModelCopyWith(
          MedicalHistoryModel value, $Res Function(MedicalHistoryModel) then) =
      _$MedicalHistoryModelCopyWithImpl<$Res>;
  $Res call({ServiceIdModel? id, List<MedicalHistoryTree1Model>? datas});

  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class _$MedicalHistoryModelCopyWithImpl<$Res>
    implements $MedicalHistoryModelCopyWith<$Res> {
  _$MedicalHistoryModelCopyWithImpl(this._value, this._then);

  final MedicalHistoryModel _value;
  // ignore: unused_field
  final $Res Function(MedicalHistoryModel) _then;

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
              as List<MedicalHistoryTree1Model>?,
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
abstract class _$MedicalHistoryModelCopyWith<$Res>
    implements $MedicalHistoryModelCopyWith<$Res> {
  factory _$MedicalHistoryModelCopyWith(_MedicalHistoryModel value,
          $Res Function(_MedicalHistoryModel) then) =
      __$MedicalHistoryModelCopyWithImpl<$Res>;
  @override
  $Res call({ServiceIdModel? id, List<MedicalHistoryTree1Model>? datas});

  @override
  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class __$MedicalHistoryModelCopyWithImpl<$Res>
    extends _$MedicalHistoryModelCopyWithImpl<$Res>
    implements _$MedicalHistoryModelCopyWith<$Res> {
  __$MedicalHistoryModelCopyWithImpl(
      _MedicalHistoryModel _value, $Res Function(_MedicalHistoryModel) _then)
      : super(_value, (v) => _then(v as _MedicalHistoryModel));

  @override
  _MedicalHistoryModel get _value => super._value as _MedicalHistoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? datas = freezed,
  }) {
    return _then(_MedicalHistoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ServiceIdModel?,
      datas: datas == freezed
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<MedicalHistoryTree1Model>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalHistoryModel extends _MedicalHistoryModel {
  _$_MedicalHistoryModel({this.id, this.datas}) : super._();

  factory _$_MedicalHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalHistoryModelFromJson(json);

  @override
  final ServiceIdModel? id;
  @override
  final List<MedicalHistoryTree1Model>? datas;

  @override
  String toString() {
    return 'MedicalHistoryModel(id: $id, datas: $datas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalHistoryModel &&
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
  _$MedicalHistoryModelCopyWith<_MedicalHistoryModel> get copyWith =>
      __$MedicalHistoryModelCopyWithImpl<_MedicalHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalHistoryModelToJson(this);
  }
}

abstract class _MedicalHistoryModel extends MedicalHistoryModel {
  factory _MedicalHistoryModel(
      {ServiceIdModel? id,
      List<MedicalHistoryTree1Model>? datas}) = _$_MedicalHistoryModel;
  _MedicalHistoryModel._() : super._();

  factory _MedicalHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalHistoryModel.fromJson;

  @override
  ServiceIdModel? get id;
  @override
  List<MedicalHistoryTree1Model>? get datas;
  @override
  @JsonKey(ignore: true)
  _$MedicalHistoryModelCopyWith<_MedicalHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
