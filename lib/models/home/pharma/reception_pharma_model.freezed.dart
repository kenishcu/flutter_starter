// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reception_pharma_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceptionPharmaModel _$ReceptionPharmaModelFromJson(Map<String, dynamic> json) {
  return _ReceptionPharmaModel.fromJson(json);
}

/// @nodoc
class _$ReceptionPharmaModelTearOff {
  const _$ReceptionPharmaModelTearOff();

  _ReceptionPharmaModel call(
      {int? patientId,
        String? patientFullname,
        String? receptionQueueId,
        int? inPatientRoomId,
        String? inPatientRoomName,
        int? bedId,
        String? bedName,
        int? currentDayTime,
        List<PharmaInfoModel>? pharmas}) {
    return _ReceptionPharmaModel(
      patientId: patientId,
      patientFullname: patientFullname,
      receptionQueueId: receptionQueueId,
      inPatientRoomId: inPatientRoomId,
      inPatientRoomName: inPatientRoomName,
      bedId: bedId,
      bedName: bedName,
      currentDayTime: currentDayTime,
      pharmas: pharmas,
    );
  }

  ReceptionPharmaModel fromJson(Map<String, Object?> json) {
    return ReceptionPharmaModel.fromJson(json);
  }
}

/// @nodoc
const $ReceptionPharmaModel = _$ReceptionPharmaModelTearOff();

/// @nodoc
mixin _$ReceptionPharmaModel {
  int? get patientId => throw _privateConstructorUsedError;
  String? get patientFullname => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;
  int? get inPatientRoomId => throw _privateConstructorUsedError;
  String? get inPatientRoomName => throw _privateConstructorUsedError;
  int? get bedId => throw _privateConstructorUsedError;
  String? get bedName => throw _privateConstructorUsedError;
  int? get currentDayTime => throw _privateConstructorUsedError;
  List<PharmaInfoModel>? get pharmas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceptionPharmaModelCopyWith<ReceptionPharmaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionPharmaModelCopyWith<$Res> {
  factory $ReceptionPharmaModelCopyWith(ReceptionPharmaModel value,
      $Res Function(ReceptionPharmaModel) then) =
  _$ReceptionPharmaModelCopyWithImpl<$Res>;
  $Res call(
      {int? patientId,
        String? patientFullname,
        String? receptionQueueId,
        int? inPatientRoomId,
        String? inPatientRoomName,
        int? bedId,
        String? bedName,
        int? currentDayTime,
        List<PharmaInfoModel>? pharmas});
}

/// @nodoc
class _$ReceptionPharmaModelCopyWithImpl<$Res>
    implements $ReceptionPharmaModelCopyWith<$Res> {
  _$ReceptionPharmaModelCopyWithImpl(this._value, this._then);

  final ReceptionPharmaModel _value;
  // ignore: unused_field
  final $Res Function(ReceptionPharmaModel) _then;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFullname = freezed,
    Object? receptionQueueId = freezed,
    Object? inPatientRoomId = freezed,
    Object? inPatientRoomName = freezed,
    Object? bedId = freezed,
    Object? bedName = freezed,
    Object? currentDayTime = freezed,
    Object? pharmas = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
      as int?,
      patientFullname: patientFullname == freezed
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
      as String?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
      as String?,
      inPatientRoomId: inPatientRoomId == freezed
          ? _value.inPatientRoomId
          : inPatientRoomId // ignore: cast_nullable_to_non_nullable
      as int?,
      inPatientRoomName: inPatientRoomName == freezed
          ? _value.inPatientRoomName
          : inPatientRoomName // ignore: cast_nullable_to_non_nullable
      as String?,
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
      as int?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
      as String?,
      currentDayTime: currentDayTime == freezed
          ? _value.currentDayTime
          : currentDayTime // ignore: cast_nullable_to_non_nullable
      as int?,
      pharmas: pharmas == freezed
          ? _value.pharmas
          : pharmas // ignore: cast_nullable_to_non_nullable
      as List<PharmaInfoModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ReceptionPharmaModelCopyWith<$Res>
    implements $ReceptionPharmaModelCopyWith<$Res> {
  factory _$ReceptionPharmaModelCopyWith(_ReceptionPharmaModel value,
      $Res Function(_ReceptionPharmaModel) then) =
  __$ReceptionPharmaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? patientId,
        String? patientFullname,
        String? receptionQueueId,
        int? inPatientRoomId,
        String? inPatientRoomName,
        int? bedId,
        String? bedName,
        int? currentDayTime,
        List<PharmaInfoModel>? pharmas});
}

/// @nodoc
class __$ReceptionPharmaModelCopyWithImpl<$Res>
    extends _$ReceptionPharmaModelCopyWithImpl<$Res>
    implements _$ReceptionPharmaModelCopyWith<$Res> {
  __$ReceptionPharmaModelCopyWithImpl(
      _ReceptionPharmaModel _value, $Res Function(_ReceptionPharmaModel) _then)
      : super(_value, (v) => _then(v as _ReceptionPharmaModel));

  @override
  _ReceptionPharmaModel get _value => super._value as _ReceptionPharmaModel;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFullname = freezed,
    Object? receptionQueueId = freezed,
    Object? inPatientRoomId = freezed,
    Object? inPatientRoomName = freezed,
    Object? bedId = freezed,
    Object? bedName = freezed,
    Object? currentDayTime = freezed,
    Object? pharmas = freezed,
  }) {
    return _then(_ReceptionPharmaModel(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
      as int?,
      patientFullname: patientFullname == freezed
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
      as String?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
      as String?,
      inPatientRoomId: inPatientRoomId == freezed
          ? _value.inPatientRoomId
          : inPatientRoomId // ignore: cast_nullable_to_non_nullable
      as int?,
      inPatientRoomName: inPatientRoomName == freezed
          ? _value.inPatientRoomName
          : inPatientRoomName // ignore: cast_nullable_to_non_nullable
      as String?,
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
      as int?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
      as String?,
      currentDayTime: currentDayTime == freezed
          ? _value.currentDayTime
          : currentDayTime // ignore: cast_nullable_to_non_nullable
      as int?,
      pharmas: pharmas == freezed
          ? _value.pharmas
          : pharmas // ignore: cast_nullable_to_non_nullable
      as List<PharmaInfoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceptionPharmaModel extends _ReceptionPharmaModel {
  _$_ReceptionPharmaModel(
      {this.patientId,
        this.patientFullname,
        this.receptionQueueId,
        this.inPatientRoomId,
        this.inPatientRoomName,
        this.bedId,
        this.bedName,
        this.currentDayTime,
        this.pharmas})
      : super._();

  factory _$_ReceptionPharmaModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReceptionPharmaModelFromJson(json);

  @override
  final int? patientId;
  @override
  final String? patientFullname;
  @override
  final String? receptionQueueId;
  @override
  final int? inPatientRoomId;
  @override
  final String? inPatientRoomName;
  @override
  final int? bedId;
  @override
  final String? bedName;
  @override
  final int? currentDayTime;
  @override
  final List<PharmaInfoModel>? pharmas;

  @override
  String toString() {
    return 'ReceptionPharmaModel(patientId: $patientId, patientFullname: $patientFullname, receptionQueueId: $receptionQueueId, inPatientRoomId: $inPatientRoomId, inPatientRoomName: $inPatientRoomName, bedId: $bedId, bedName: $bedName, currentDayTime: $currentDayTime, pharmas: $pharmas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceptionPharmaModel &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.patientFullname, patientFullname) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId) &&
            const DeepCollectionEquality()
                .equals(other.inPatientRoomId, inPatientRoomId) &&
            const DeepCollectionEquality()
                .equals(other.inPatientRoomName, inPatientRoomName) &&
            const DeepCollectionEquality().equals(other.bedId, bedId) &&
            const DeepCollectionEquality().equals(other.bedName, bedName) &&
            const DeepCollectionEquality()
                .equals(other.currentDayTime, currentDayTime) &&
            const DeepCollectionEquality().equals(other.pharmas, pharmas));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(patientFullname),
      const DeepCollectionEquality().hash(receptionQueueId),
      const DeepCollectionEquality().hash(inPatientRoomId),
      const DeepCollectionEquality().hash(inPatientRoomName),
      const DeepCollectionEquality().hash(bedId),
      const DeepCollectionEquality().hash(bedName),
      const DeepCollectionEquality().hash(currentDayTime),
      const DeepCollectionEquality().hash(pharmas));

  @JsonKey(ignore: true)
  @override
  _$ReceptionPharmaModelCopyWith<_ReceptionPharmaModel> get copyWith =>
      __$ReceptionPharmaModelCopyWithImpl<_ReceptionPharmaModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceptionPharmaModelToJson(this);
  }
}

abstract class _ReceptionPharmaModel extends ReceptionPharmaModel {
  factory _ReceptionPharmaModel(
      {int? patientId,
        String? patientFullname,
        String? receptionQueueId,
        int? inPatientRoomId,
        String? inPatientRoomName,
        int? bedId,
        String? bedName,
        int? currentDayTime,
        List<PharmaInfoModel>? pharmas}) = _$_ReceptionPharmaModel;
  _ReceptionPharmaModel._() : super._();

  factory _ReceptionPharmaModel.fromJson(Map<String, dynamic> json) =
  _$_ReceptionPharmaModel.fromJson;

  @override
  int? get patientId;
  @override
  String? get patientFullname;
  @override
  String? get receptionQueueId;
  @override
  int? get inPatientRoomId;
  @override
  String? get inPatientRoomName;
  @override
  int? get bedId;
  @override
  String? get bedName;
  @override
  int? get currentDayTime;
  @override
  List<PharmaInfoModel>? get pharmas;
  @override
  @JsonKey(ignore: true)
  _$ReceptionPharmaModelCopyWith<_ReceptionPharmaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
