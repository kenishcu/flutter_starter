// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bill_and_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillAndPaymentModel _$BillAndPaymentModelFromJson(Map<String, dynamic> json) {
  return _BillAndPaymentModel.fromJson(json);
}

/// @nodoc
class _$BillAndPaymentModelTearOff {
  const _$BillAndPaymentModelTearOff();

  _BillAndPaymentModel call(
      {int? serviceId,
      String? serviceName,
      int? quantity,
      int? servicePrice,
      int? finalPrice,
      int? usedAt}) {
    return _BillAndPaymentModel(
      serviceId: serviceId,
      serviceName: serviceName,
      quantity: quantity,
      servicePrice: servicePrice,
      finalPrice: finalPrice,
      usedAt: usedAt,
    );
  }

  BillAndPaymentModel fromJson(Map<String, Object?> json) {
    return BillAndPaymentModel.fromJson(json);
  }
}

/// @nodoc
const $BillAndPaymentModel = _$BillAndPaymentModelTearOff();

/// @nodoc
mixin _$BillAndPaymentModel {
  int? get serviceId => throw _privateConstructorUsedError;
  String? get serviceName => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get servicePrice => throw _privateConstructorUsedError;
  int? get finalPrice => throw _privateConstructorUsedError;
  int? get usedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillAndPaymentModelCopyWith<BillAndPaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillAndPaymentModelCopyWith<$Res> {
  factory $BillAndPaymentModelCopyWith(
          BillAndPaymentModel value, $Res Function(BillAndPaymentModel) then) =
      _$BillAndPaymentModelCopyWithImpl<$Res>;
  $Res call(
      {int? serviceId,
      String? serviceName,
      int? quantity,
      int? servicePrice,
      int? finalPrice,
      int? usedAt});
}

/// @nodoc
class _$BillAndPaymentModelCopyWithImpl<$Res>
    implements $BillAndPaymentModelCopyWith<$Res> {
  _$BillAndPaymentModelCopyWithImpl(this._value, this._then);

  final BillAndPaymentModel _value;
  // ignore: unused_field
  final $Res Function(BillAndPaymentModel) _then;

  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceName = freezed,
    Object? quantity = freezed,
    Object? servicePrice = freezed,
    Object? finalPrice = freezed,
    Object? usedAt = freezed,
  }) {
    return _then(_value.copyWith(
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      servicePrice: servicePrice == freezed
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BillAndPaymentModelCopyWith<$Res>
    implements $BillAndPaymentModelCopyWith<$Res> {
  factory _$BillAndPaymentModelCopyWith(_BillAndPaymentModel value,
          $Res Function(_BillAndPaymentModel) then) =
      __$BillAndPaymentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? serviceId,
      String? serviceName,
      int? quantity,
      int? servicePrice,
      int? finalPrice,
      int? usedAt});
}

/// @nodoc
class __$BillAndPaymentModelCopyWithImpl<$Res>
    extends _$BillAndPaymentModelCopyWithImpl<$Res>
    implements _$BillAndPaymentModelCopyWith<$Res> {
  __$BillAndPaymentModelCopyWithImpl(
      _BillAndPaymentModel _value, $Res Function(_BillAndPaymentModel) _then)
      : super(_value, (v) => _then(v as _BillAndPaymentModel));

  @override
  _BillAndPaymentModel get _value => super._value as _BillAndPaymentModel;

  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceName = freezed,
    Object? quantity = freezed,
    Object? servicePrice = freezed,
    Object? finalPrice = freezed,
    Object? usedAt = freezed,
  }) {
    return _then(_BillAndPaymentModel(
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      servicePrice: servicePrice == freezed
          ? _value.servicePrice
          : servicePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillAndPaymentModel extends _BillAndPaymentModel {
  _$_BillAndPaymentModel(
      {this.serviceId,
      this.serviceName,
      this.quantity,
      this.servicePrice,
      this.finalPrice,
      this.usedAt})
      : super._();

  factory _$_BillAndPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$$_BillAndPaymentModelFromJson(json);

  @override
  final int? serviceId;
  @override
  final String? serviceName;
  @override
  final int? quantity;
  @override
  final int? servicePrice;
  @override
  final int? finalPrice;
  @override
  final int? usedAt;

  @override
  String toString() {
    return 'BillAndPaymentModel(serviceId: $serviceId, serviceName: $serviceName, quantity: $quantity, servicePrice: $servicePrice, finalPrice: $finalPrice, usedAt: $usedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BillAndPaymentModel &&
            const DeepCollectionEquality().equals(other.serviceId, serviceId) &&
            const DeepCollectionEquality()
                .equals(other.serviceName, serviceName) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.servicePrice, servicePrice) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality().equals(other.usedAt, usedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serviceId),
      const DeepCollectionEquality().hash(serviceName),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(servicePrice),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(usedAt));

  @JsonKey(ignore: true)
  @override
  _$BillAndPaymentModelCopyWith<_BillAndPaymentModel> get copyWith =>
      __$BillAndPaymentModelCopyWithImpl<_BillAndPaymentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillAndPaymentModelToJson(this);
  }
}

abstract class _BillAndPaymentModel extends BillAndPaymentModel {
  factory _BillAndPaymentModel(
      {int? serviceId,
      String? serviceName,
      int? quantity,
      int? servicePrice,
      int? finalPrice,
      int? usedAt}) = _$_BillAndPaymentModel;
  _BillAndPaymentModel._() : super._();

  factory _BillAndPaymentModel.fromJson(Map<String, dynamic> json) =
      _$_BillAndPaymentModel.fromJson;

  @override
  int? get serviceId;
  @override
  String? get serviceName;
  @override
  int? get quantity;
  @override
  int? get servicePrice;
  @override
  int? get finalPrice;
  @override
  int? get usedAt;
  @override
  @JsonKey(ignore: true)
  _$BillAndPaymentModelCopyWith<_BillAndPaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
