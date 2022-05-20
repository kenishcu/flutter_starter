// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reception_treatment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceptionTreatmentModel _$ReceptionTreatmentModelFromJson(
    Map<String, dynamic> json) {
  return _ReceptionTreatmentModel.fromJson(json);
}

/// @nodoc
class _$ReceptionTreatmentModelTearOff {
  const _$ReceptionTreatmentModelTearOff();

  _ReceptionTreatmentModel call(
      {String? patientId,
      String? patientFullName,
      String? receptionQueueId,
      int? inPatientRoomId,
      String? inPatientRoomName,
      int? bedId,
      String? bedName,
      List<TreatmentInfoModel>? treatments}) {
    return _ReceptionTreatmentModel(
      patientId: patientId,
      patientFullName: patientFullName,
      receptionQueueId: receptionQueueId,
      inPatientRoomId: inPatientRoomId,
      inPatientRoomName: inPatientRoomName,
      bedId: bedId,
      bedName: bedName,
      treatments: treatments,
    );
  }

  ReceptionTreatmentModel fromJson(Map<String, Object?> json) {
    return ReceptionTreatmentModel.fromJson(json);
  }
}

/// @nodoc
const $ReceptionTreatmentModel = _$ReceptionTreatmentModelTearOff();

/// @nodoc
mixin _$ReceptionTreatmentModel {
  String? get patientId => throw _privateConstructorUsedError;
  String? get patientFullName => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;
  int? get inPatientRoomId => throw _privateConstructorUsedError;
  String? get inPatientRoomName => throw _privateConstructorUsedError;
  int? get bedId => throw _privateConstructorUsedError;
  String? get bedName => throw _privateConstructorUsedError;
  List<TreatmentInfoModel>? get treatments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceptionTreatmentModelCopyWith<ReceptionTreatmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionTreatmentModelCopyWith<$Res> {
  factory $ReceptionTreatmentModelCopyWith(ReceptionTreatmentModel value,
          $Res Function(ReceptionTreatmentModel) then) =
      _$ReceptionTreatmentModelCopyWithImpl<$Res>;
  $Res call(
      {String? patientId,
      String? patientFullName,
      String? receptionQueueId,
      int? inPatientRoomId,
      String? inPatientRoomName,
      int? bedId,
      String? bedName,
      List<TreatmentInfoModel>? treatments});
}

/// @nodoc
class _$ReceptionTreatmentModelCopyWithImpl<$Res>
    implements $ReceptionTreatmentModelCopyWith<$Res> {
  _$ReceptionTreatmentModelCopyWithImpl(this._value, this._then);

  final ReceptionTreatmentModel _value;
  // ignore: unused_field
  final $Res Function(ReceptionTreatmentModel) _then;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFullName = freezed,
    Object? receptionQueueId = freezed,
    Object? inPatientRoomId = freezed,
    Object? inPatientRoomName = freezed,
    Object? bedId = freezed,
    Object? bedName = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFullName: patientFullName == freezed
          ? _value.patientFullName
          : patientFullName // ignore: cast_nullable_to_non_nullable
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
      treatments: treatments == freezed
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as List<TreatmentInfoModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ReceptionTreatmentModelCopyWith<$Res>
    implements $ReceptionTreatmentModelCopyWith<$Res> {
  factory _$ReceptionTreatmentModelCopyWith(_ReceptionTreatmentModel value,
          $Res Function(_ReceptionTreatmentModel) then) =
      __$ReceptionTreatmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? patientId,
      String? patientFullName,
      String? receptionQueueId,
      int? inPatientRoomId,
      String? inPatientRoomName,
      int? bedId,
      String? bedName,
      List<TreatmentInfoModel>? treatments});
}

/// @nodoc
class __$ReceptionTreatmentModelCopyWithImpl<$Res>
    extends _$ReceptionTreatmentModelCopyWithImpl<$Res>
    implements _$ReceptionTreatmentModelCopyWith<$Res> {
  __$ReceptionTreatmentModelCopyWithImpl(_ReceptionTreatmentModel _value,
      $Res Function(_ReceptionTreatmentModel) _then)
      : super(_value, (v) => _then(v as _ReceptionTreatmentModel));

  @override
  _ReceptionTreatmentModel get _value =>
      super._value as _ReceptionTreatmentModel;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFullName = freezed,
    Object? receptionQueueId = freezed,
    Object? inPatientRoomId = freezed,
    Object? inPatientRoomName = freezed,
    Object? bedId = freezed,
    Object? bedName = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_ReceptionTreatmentModel(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFullName: patientFullName == freezed
          ? _value.patientFullName
          : patientFullName // ignore: cast_nullable_to_non_nullable
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
      treatments: treatments == freezed
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as List<TreatmentInfoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceptionTreatmentModel extends _ReceptionTreatmentModel {
  _$_ReceptionTreatmentModel(
      {this.patientId,
      this.patientFullName,
      this.receptionQueueId,
      this.inPatientRoomId,
      this.inPatientRoomName,
      this.bedId,
      this.bedName,
      this.treatments})
      : super._();

  factory _$_ReceptionTreatmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReceptionTreatmentModelFromJson(json);

  @override
  final String? patientId;
  @override
  final String? patientFullName;
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
  final List<TreatmentInfoModel>? treatments;

  @override
  String toString() {
    return 'ReceptionTreatmentModel(patientId: $patientId, patientFullName: $patientFullName, receptionQueueId: $receptionQueueId, inPatientRoomId: $inPatientRoomId, inPatientRoomName: $inPatientRoomName, bedId: $bedId, bedName: $bedName, treatments: $treatments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceptionTreatmentModel &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.patientFullName, patientFullName) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId) &&
            const DeepCollectionEquality()
                .equals(other.inPatientRoomId, inPatientRoomId) &&
            const DeepCollectionEquality()
                .equals(other.inPatientRoomName, inPatientRoomName) &&
            const DeepCollectionEquality().equals(other.bedId, bedId) &&
            const DeepCollectionEquality().equals(other.bedName, bedName) &&
            const DeepCollectionEquality()
                .equals(other.treatments, treatments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(patientFullName),
      const DeepCollectionEquality().hash(receptionQueueId),
      const DeepCollectionEquality().hash(inPatientRoomId),
      const DeepCollectionEquality().hash(inPatientRoomName),
      const DeepCollectionEquality().hash(bedId),
      const DeepCollectionEquality().hash(bedName),
      const DeepCollectionEquality().hash(treatments));

  @JsonKey(ignore: true)
  @override
  _$ReceptionTreatmentModelCopyWith<_ReceptionTreatmentModel> get copyWith =>
      __$ReceptionTreatmentModelCopyWithImpl<_ReceptionTreatmentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceptionTreatmentModelToJson(this);
  }
}

abstract class _ReceptionTreatmentModel extends ReceptionTreatmentModel {
  factory _ReceptionTreatmentModel(
      {String? patientId,
      String? patientFullName,
      String? receptionQueueId,
      int? inPatientRoomId,
      String? inPatientRoomName,
      int? bedId,
      String? bedName,
      List<TreatmentInfoModel>? treatments}) = _$_ReceptionTreatmentModel;
  _ReceptionTreatmentModel._() : super._();

  factory _ReceptionTreatmentModel.fromJson(Map<String, dynamic> json) =
      _$_ReceptionTreatmentModel.fromJson;

  @override
  String? get patientId;
  @override
  String? get patientFullName;
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
  List<TreatmentInfoModel>? get treatments;
  @override
  @JsonKey(ignore: true)
  _$ReceptionTreatmentModelCopyWith<_ReceptionTreatmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
