// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bill_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillTypeModel _$BillTypeModelFromJson(Map<String, dynamic> json) {
  return _BillTypeModel.fromJson(json);
}

/// @nodoc
class _$BillTypeModelTearOff {
  const _$BillTypeModelTearOff();

  _BillTypeModel call(
      {int? patientId,
      String? receptionQueueId,
      String? paymentTypeRequestedInRoom,
      int? paymentRequestedInRoom}) {
    return _BillTypeModel(
      patientId: patientId,
      receptionQueueId: receptionQueueId,
      paymentTypeRequestedInRoom: paymentTypeRequestedInRoom,
      paymentRequestedInRoom: paymentRequestedInRoom,
    );
  }

  BillTypeModel fromJson(Map<String, Object?> json) {
    return BillTypeModel.fromJson(json);
  }
}

/// @nodoc
const $BillTypeModel = _$BillTypeModelTearOff();

/// @nodoc
mixin _$BillTypeModel {
  int? get patientId => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;
  String? get paymentTypeRequestedInRoom => throw _privateConstructorUsedError;
  int? get paymentRequestedInRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillTypeModelCopyWith<BillTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillTypeModelCopyWith<$Res> {
  factory $BillTypeModelCopyWith(
          BillTypeModel value, $Res Function(BillTypeModel) then) =
      _$BillTypeModelCopyWithImpl<$Res>;
  $Res call(
      {int? patientId,
      String? receptionQueueId,
      String? paymentTypeRequestedInRoom,
      int? paymentRequestedInRoom});
}

/// @nodoc
class _$BillTypeModelCopyWithImpl<$Res>
    implements $BillTypeModelCopyWith<$Res> {
  _$BillTypeModelCopyWithImpl(this._value, this._then);

  final BillTypeModel _value;
  // ignore: unused_field
  final $Res Function(BillTypeModel) _then;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? receptionQueueId = freezed,
    Object? paymentTypeRequestedInRoom = freezed,
    Object? paymentRequestedInRoom = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeRequestedInRoom: paymentTypeRequestedInRoom == freezed
          ? _value.paymentTypeRequestedInRoom
          : paymentTypeRequestedInRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestedInRoom: paymentRequestedInRoom == freezed
          ? _value.paymentRequestedInRoom
          : paymentRequestedInRoom // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BillTypeModelCopyWith<$Res>
    implements $BillTypeModelCopyWith<$Res> {
  factory _$BillTypeModelCopyWith(
          _BillTypeModel value, $Res Function(_BillTypeModel) then) =
      __$BillTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? patientId,
      String? receptionQueueId,
      String? paymentTypeRequestedInRoom,
      int? paymentRequestedInRoom});
}

/// @nodoc
class __$BillTypeModelCopyWithImpl<$Res>
    extends _$BillTypeModelCopyWithImpl<$Res>
    implements _$BillTypeModelCopyWith<$Res> {
  __$BillTypeModelCopyWithImpl(
      _BillTypeModel _value, $Res Function(_BillTypeModel) _then)
      : super(_value, (v) => _then(v as _BillTypeModel));

  @override
  _BillTypeModel get _value => super._value as _BillTypeModel;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? receptionQueueId = freezed,
    Object? paymentTypeRequestedInRoom = freezed,
    Object? paymentRequestedInRoom = freezed,
  }) {
    return _then(_BillTypeModel(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeRequestedInRoom: paymentTypeRequestedInRoom == freezed
          ? _value.paymentTypeRequestedInRoom
          : paymentTypeRequestedInRoom // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentRequestedInRoom: paymentRequestedInRoom == freezed
          ? _value.paymentRequestedInRoom
          : paymentRequestedInRoom // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillTypeModel extends _BillTypeModel {
  _$_BillTypeModel(
      {this.patientId,
      this.receptionQueueId,
      this.paymentTypeRequestedInRoom,
      this.paymentRequestedInRoom})
      : super._();

  factory _$_BillTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_BillTypeModelFromJson(json);

  @override
  final int? patientId;
  @override
  final String? receptionQueueId;
  @override
  final String? paymentTypeRequestedInRoom;
  @override
  final int? paymentRequestedInRoom;

  @override
  String toString() {
    return 'BillTypeModel(patientId: $patientId, receptionQueueId: $receptionQueueId, paymentTypeRequestedInRoom: $paymentTypeRequestedInRoom, paymentRequestedInRoom: $paymentRequestedInRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BillTypeModel &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId) &&
            const DeepCollectionEquality().equals(
                other.paymentTypeRequestedInRoom, paymentTypeRequestedInRoom) &&
            const DeepCollectionEquality()
                .equals(other.paymentRequestedInRoom, paymentRequestedInRoom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(receptionQueueId),
      const DeepCollectionEquality().hash(paymentTypeRequestedInRoom),
      const DeepCollectionEquality().hash(paymentRequestedInRoom));

  @JsonKey(ignore: true)
  @override
  _$BillTypeModelCopyWith<_BillTypeModel> get copyWith =>
      __$BillTypeModelCopyWithImpl<_BillTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillTypeModelToJson(this);
  }
}

abstract class _BillTypeModel extends BillTypeModel {
  factory _BillTypeModel(
      {int? patientId,
      String? receptionQueueId,
      String? paymentTypeRequestedInRoom,
      int? paymentRequestedInRoom}) = _$_BillTypeModel;
  _BillTypeModel._() : super._();

  factory _BillTypeModel.fromJson(Map<String, dynamic> json) =
      _$_BillTypeModel.fromJson;

  @override
  int? get patientId;
  @override
  String? get receptionQueueId;
  @override
  String? get paymentTypeRequestedInRoom;
  @override
  int? get paymentRequestedInRoom;
  @override
  @JsonKey(ignore: true)
  _$BillTypeModelCopyWith<_BillTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
