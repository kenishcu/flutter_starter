// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillModel _$BillModelFromJson(Map<String, dynamic> json) {
  return _BillModel.fromJson(json);
}

/// @nodoc
class _$BillModelTearOff {
  const _$BillModelTearOff();

  _BillModel call(
      {int? branchId,
      String? branchName,
      int? patientId,
      String? receptionQueueId,
      String? patientFullname,
      int? finalPrice,
      String? receiptId,
      int? paymentStatus}) {
    return _BillModel(
      branchId: branchId,
      branchName: branchName,
      patientId: patientId,
      receptionQueueId: receptionQueueId,
      patientFullname: patientFullname,
      finalPrice: finalPrice,
      receiptId: receiptId,
      paymentStatus: paymentStatus,
    );
  }

  BillModel fromJson(Map<String, Object?> json) {
    return BillModel.fromJson(json);
  }
}

/// @nodoc
const $BillModel = _$BillModelTearOff();

/// @nodoc
mixin _$BillModel {
  int? get branchId => throw _privateConstructorUsedError;
  String? get branchName => throw _privateConstructorUsedError;
  int? get patientId => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;
  String? get patientFullname => throw _privateConstructorUsedError;
  int? get finalPrice => throw _privateConstructorUsedError;
  String? get receiptId => throw _privateConstructorUsedError;
  int? get paymentStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillModelCopyWith<BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModelCopyWith<$Res> {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) then) =
      _$BillModelCopyWithImpl<$Res>;
  $Res call(
      {int? branchId,
      String? branchName,
      int? patientId,
      String? receptionQueueId,
      String? patientFullname,
      int? finalPrice,
      String? receiptId,
      int? paymentStatus});
}

/// @nodoc
class _$BillModelCopyWithImpl<$Res> implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._value, this._then);

  final BillModel _value;
  // ignore: unused_field
  final $Res Function(BillModel) _then;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? branchName = freezed,
    Object? patientId = freezed,
    Object? receptionQueueId = freezed,
    Object? patientFullname = freezed,
    Object? finalPrice = freezed,
    Object? receiptId = freezed,
    Object? paymentStatus = freezed,
  }) {
    return _then(_value.copyWith(
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFullname: patientFullname == freezed
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BillModelCopyWith<$Res> implements $BillModelCopyWith<$Res> {
  factory _$BillModelCopyWith(
          _BillModel value, $Res Function(_BillModel) then) =
      __$BillModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? branchId,
      String? branchName,
      int? patientId,
      String? receptionQueueId,
      String? patientFullname,
      int? finalPrice,
      String? receiptId,
      int? paymentStatus});
}

/// @nodoc
class __$BillModelCopyWithImpl<$Res> extends _$BillModelCopyWithImpl<$Res>
    implements _$BillModelCopyWith<$Res> {
  __$BillModelCopyWithImpl(_BillModel _value, $Res Function(_BillModel) _then)
      : super(_value, (v) => _then(v as _BillModel));

  @override
  _BillModel get _value => super._value as _BillModel;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? branchName = freezed,
    Object? patientId = freezed,
    Object? receptionQueueId = freezed,
    Object? patientFullname = freezed,
    Object? finalPrice = freezed,
    Object? receiptId = freezed,
    Object? paymentStatus = freezed,
  }) {
    return _then(_BillModel(
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFullname: patientFullname == freezed
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      receiptId: receiptId == freezed
          ? _value.receiptId
          : receiptId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: paymentStatus == freezed
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillModel extends _BillModel {
  _$_BillModel(
      {this.branchId,
      this.branchName,
      this.patientId,
      this.receptionQueueId,
      this.patientFullname,
      this.finalPrice,
      this.receiptId,
      this.paymentStatus})
      : super._();

  factory _$_BillModel.fromJson(Map<String, dynamic> json) =>
      _$$_BillModelFromJson(json);

  @override
  final int? branchId;
  @override
  final String? branchName;
  @override
  final int? patientId;
  @override
  final String? receptionQueueId;
  @override
  final String? patientFullname;
  @override
  final int? finalPrice;
  @override
  final String? receiptId;
  @override
  final int? paymentStatus;

  @override
  String toString() {
    return 'BillModel(branchId: $branchId, branchName: $branchName, patientId: $patientId, receptionQueueId: $receptionQueueId, patientFullname: $patientFullname, finalPrice: $finalPrice, receiptId: $receiptId, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BillModel &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName) &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId) &&
            const DeepCollectionEquality()
                .equals(other.patientFullname, patientFullname) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality().equals(other.receiptId, receiptId) &&
            const DeepCollectionEquality()
                .equals(other.paymentStatus, paymentStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(branchName),
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(receptionQueueId),
      const DeepCollectionEquality().hash(patientFullname),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(receiptId),
      const DeepCollectionEquality().hash(paymentStatus));

  @JsonKey(ignore: true)
  @override
  _$BillModelCopyWith<_BillModel> get copyWith =>
      __$BillModelCopyWithImpl<_BillModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillModelToJson(this);
  }
}

abstract class _BillModel extends BillModel {
  factory _BillModel(
      {int? branchId,
      String? branchName,
      int? patientId,
      String? receptionQueueId,
      String? patientFullname,
      int? finalPrice,
      String? receiptId,
      int? paymentStatus}) = _$_BillModel;
  _BillModel._() : super._();

  factory _BillModel.fromJson(Map<String, dynamic> json) =
      _$_BillModel.fromJson;

  @override
  int? get branchId;
  @override
  String? get branchName;
  @override
  int? get patientId;
  @override
  String? get receptionQueueId;
  @override
  String? get patientFullname;
  @override
  int? get finalPrice;
  @override
  String? get receiptId;
  @override
  int? get paymentStatus;
  @override
  @JsonKey(ignore: true)
  _$BillModelCopyWith<_BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}
