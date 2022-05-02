// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTypeModel _$PaymentTypeModelFromJson(Map<String, dynamic> json) {
  return _PaymentTypeModel.fromJson(json);
}

/// @nodoc
class _$PaymentTypeModelTearOff {
  const _$PaymentTypeModelTearOff();

  _PaymentTypeModel call(
      {String? paymentTypeId,
        String? paymentTypeCode,
        String? paymentTypeName}) {
    return _PaymentTypeModel(
      paymentTypeId: paymentTypeId,
      paymentTypeCode: paymentTypeCode,
      paymentTypeName: paymentTypeName,
    );
  }

  PaymentTypeModel fromJson(Map<String, Object?> json) {
    return PaymentTypeModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentTypeModel = _$PaymentTypeModelTearOff();

/// @nodoc
mixin _$PaymentTypeModel {
  String? get paymentTypeId => throw _privateConstructorUsedError;
  String? get paymentTypeCode => throw _privateConstructorUsedError;
  String? get paymentTypeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTypeModelCopyWith<PaymentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeModelCopyWith<$Res> {
  factory $PaymentTypeModelCopyWith(
      PaymentTypeModel value, $Res Function(PaymentTypeModel) then) =
  _$PaymentTypeModelCopyWithImpl<$Res>;
  $Res call(
      {String? paymentTypeId,
        String? paymentTypeCode,
        String? paymentTypeName});
}

/// @nodoc
class _$PaymentTypeModelCopyWithImpl<$Res>
    implements $PaymentTypeModelCopyWith<$Res> {
  _$PaymentTypeModelCopyWithImpl(this._value, this._then);

  final PaymentTypeModel _value;
  // ignore: unused_field
  final $Res Function(PaymentTypeModel) _then;

  @override
  $Res call({
    Object? paymentTypeId = freezed,
    Object? paymentTypeCode = freezed,
    Object? paymentTypeName = freezed,
  }) {
    return _then(_value.copyWith(
      paymentTypeId: paymentTypeId == freezed
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
      as String?,
      paymentTypeCode: paymentTypeCode == freezed
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
      as String?,
      paymentTypeName: paymentTypeName == freezed
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentTypeModelCopyWith<$Res>
    implements $PaymentTypeModelCopyWith<$Res> {
  factory _$PaymentTypeModelCopyWith(
      _PaymentTypeModel value, $Res Function(_PaymentTypeModel) then) =
  __$PaymentTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? paymentTypeId,
        String? paymentTypeCode,
        String? paymentTypeName});
}

/// @nodoc
class __$PaymentTypeModelCopyWithImpl<$Res>
    extends _$PaymentTypeModelCopyWithImpl<$Res>
    implements _$PaymentTypeModelCopyWith<$Res> {
  __$PaymentTypeModelCopyWithImpl(
      _PaymentTypeModel _value, $Res Function(_PaymentTypeModel) _then)
      : super(_value, (v) => _then(v as _PaymentTypeModel));

  @override
  _PaymentTypeModel get _value => super._value as _PaymentTypeModel;

  @override
  $Res call({
    Object? paymentTypeId = freezed,
    Object? paymentTypeCode = freezed,
    Object? paymentTypeName = freezed,
  }) {
    return _then(_PaymentTypeModel(
      paymentTypeId: paymentTypeId == freezed
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
      as String?,
      paymentTypeCode: paymentTypeCode == freezed
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
      as String?,
      paymentTypeName: paymentTypeName == freezed
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTypeModel extends _PaymentTypeModel {
  _$_PaymentTypeModel(
      {this.paymentTypeId, this.paymentTypeCode, this.paymentTypeName})
      : super._();

  factory _$_PaymentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTypeModelFromJson(json);

  @override
  final String? paymentTypeId;
  @override
  final String? paymentTypeCode;
  @override
  final String? paymentTypeName;

  @override
  String toString() {
    return 'PaymentTypeModel(paymentTypeId: $paymentTypeId, paymentTypeCode: $paymentTypeCode, paymentTypeName: $paymentTypeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentTypeModel &&
            const DeepCollectionEquality()
                .equals(other.paymentTypeId, paymentTypeId) &&
            const DeepCollectionEquality()
                .equals(other.paymentTypeCode, paymentTypeCode) &&
            const DeepCollectionEquality()
                .equals(other.paymentTypeName, paymentTypeName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentTypeId),
      const DeepCollectionEquality().hash(paymentTypeCode),
      const DeepCollectionEquality().hash(paymentTypeName));

  @JsonKey(ignore: true)
  @override
  _$PaymentTypeModelCopyWith<_PaymentTypeModel> get copyWith =>
      __$PaymentTypeModelCopyWithImpl<_PaymentTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTypeModelToJson(this);
  }
}

abstract class _PaymentTypeModel extends PaymentTypeModel {
  factory _PaymentTypeModel(
      {String? paymentTypeId,
        String? paymentTypeCode,
        String? paymentTypeName}) = _$_PaymentTypeModel;
  _PaymentTypeModel._() : super._();

  factory _PaymentTypeModel.fromJson(Map<String, dynamic> json) =
  _$_PaymentTypeModel.fromJson;

  @override
  String? get paymentTypeId;
  @override
  String? get paymentTypeCode;
  @override
  String? get paymentTypeName;
  @override
  @JsonKey(ignore: true)
  _$PaymentTypeModelCopyWith<_PaymentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
