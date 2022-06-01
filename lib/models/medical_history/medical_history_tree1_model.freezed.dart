// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_history_tree1_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalHistoryTree1Model _$MedicalHistoryTree1ModelFromJson(
    Map<String, dynamic> json) {
  return _MedicalHistoryTree1Model.fromJson(json);
}

/// @nodoc
class _$MedicalHistoryTree1ModelTearOff {
  const _$MedicalHistoryTree1ModelTearOff();

  _MedicalHistoryTree1Model call(
      {ServiceIdModel? id, List<MedicalHistoryTree2Model>? datas}) {
    return _MedicalHistoryTree1Model(
      id: id,
      datas: datas,
    );
  }

  MedicalHistoryTree1Model fromJson(Map<String, Object?> json) {
    return MedicalHistoryTree1Model.fromJson(json);
  }
}

/// @nodoc
const $MedicalHistoryTree1Model = _$MedicalHistoryTree1ModelTearOff();

/// @nodoc
mixin _$MedicalHistoryTree1Model {
  ServiceIdModel? get id => throw _privateConstructorUsedError;
  List<MedicalHistoryTree2Model>? get datas =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalHistoryTree1ModelCopyWith<MedicalHistoryTree1Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalHistoryTree1ModelCopyWith<$Res> {
  factory $MedicalHistoryTree1ModelCopyWith(MedicalHistoryTree1Model value,
          $Res Function(MedicalHistoryTree1Model) then) =
      _$MedicalHistoryTree1ModelCopyWithImpl<$Res>;
  $Res call({ServiceIdModel? id, List<MedicalHistoryTree2Model>? datas});

  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class _$MedicalHistoryTree1ModelCopyWithImpl<$Res>
    implements $MedicalHistoryTree1ModelCopyWith<$Res> {
  _$MedicalHistoryTree1ModelCopyWithImpl(this._value, this._then);

  final MedicalHistoryTree1Model _value;
  // ignore: unused_field
  final $Res Function(MedicalHistoryTree1Model) _then;

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
              as List<MedicalHistoryTree2Model>?,
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
abstract class _$MedicalHistoryTree1ModelCopyWith<$Res>
    implements $MedicalHistoryTree1ModelCopyWith<$Res> {
  factory _$MedicalHistoryTree1ModelCopyWith(_MedicalHistoryTree1Model value,
          $Res Function(_MedicalHistoryTree1Model) then) =
      __$MedicalHistoryTree1ModelCopyWithImpl<$Res>;
  @override
  $Res call({ServiceIdModel? id, List<MedicalHistoryTree2Model>? datas});

  @override
  $ServiceIdModelCopyWith<$Res>? get id;
}

/// @nodoc
class __$MedicalHistoryTree1ModelCopyWithImpl<$Res>
    extends _$MedicalHistoryTree1ModelCopyWithImpl<$Res>
    implements _$MedicalHistoryTree1ModelCopyWith<$Res> {
  __$MedicalHistoryTree1ModelCopyWithImpl(_MedicalHistoryTree1Model _value,
      $Res Function(_MedicalHistoryTree1Model) _then)
      : super(_value, (v) => _then(v as _MedicalHistoryTree1Model));

  @override
  _MedicalHistoryTree1Model get _value =>
      super._value as _MedicalHistoryTree1Model;

  @override
  $Res call({
    Object? id = freezed,
    Object? datas = freezed,
  }) {
    return _then(_MedicalHistoryTree1Model(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ServiceIdModel?,
      datas: datas == freezed
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<MedicalHistoryTree2Model>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalHistoryTree1Model extends _MedicalHistoryTree1Model {
  _$_MedicalHistoryTree1Model({this.id, this.datas}) : super._();

  factory _$_MedicalHistoryTree1Model.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalHistoryTree1ModelFromJson(json);

  @override
  final ServiceIdModel? id;
  @override
  final List<MedicalHistoryTree2Model>? datas;

  @override
  String toString() {
    return 'MedicalHistoryTree1Model(id: $id, datas: $datas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalHistoryTree1Model &&
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
  _$MedicalHistoryTree1ModelCopyWith<_MedicalHistoryTree1Model> get copyWith =>
      __$MedicalHistoryTree1ModelCopyWithImpl<_MedicalHistoryTree1Model>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalHistoryTree1ModelToJson(this);
  }
}

abstract class _MedicalHistoryTree1Model extends MedicalHistoryTree1Model {
  factory _MedicalHistoryTree1Model(
      {ServiceIdModel? id,
      List<MedicalHistoryTree2Model>? datas}) = _$_MedicalHistoryTree1Model;
  _MedicalHistoryTree1Model._() : super._();

  factory _MedicalHistoryTree1Model.fromJson(Map<String, dynamic> json) =
      _$_MedicalHistoryTree1Model.fromJson;

  @override
  ServiceIdModel? get id;
  @override
  List<MedicalHistoryTree2Model>? get datas;
  @override
  @JsonKey(ignore: true)
  _$MedicalHistoryTree1ModelCopyWith<_MedicalHistoryTree1Model> get copyWith =>
      throw _privateConstructorUsedError;
}
