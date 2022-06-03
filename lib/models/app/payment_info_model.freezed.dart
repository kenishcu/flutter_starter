// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentInfoModel _$PaymentInfoModelFromJson(Map<String, dynamic> json) {
  return _PaymentInfoModel.fromJson(json);
}

/// @nodoc
class _$PaymentInfoModelTearOff {
  const _$PaymentInfoModelTearOff();

  _PaymentInfoModel call(
      {PaymentConfigModel? momo, PaymentConfigModel? vnpay}) {
    return _PaymentInfoModel(
      momo: momo,
      vnpay: vnpay,
    );
  }

  PaymentInfoModel fromJson(Map<String, Object?> json) {
    return PaymentInfoModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentInfoModel = _$PaymentInfoModelTearOff();

/// @nodoc
mixin _$PaymentInfoModel {
  PaymentConfigModel? get momo => throw _privateConstructorUsedError;
  PaymentConfigModel? get vnpay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentInfoModelCopyWith<PaymentInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoModelCopyWith<$Res> {
  factory $PaymentInfoModelCopyWith(
          PaymentInfoModel value, $Res Function(PaymentInfoModel) then) =
      _$PaymentInfoModelCopyWithImpl<$Res>;
  $Res call({PaymentConfigModel? momo, PaymentConfigModel? vnpay});

  $PaymentConfigModelCopyWith<$Res>? get momo;
  $PaymentConfigModelCopyWith<$Res>? get vnpay;
}

/// @nodoc
class _$PaymentInfoModelCopyWithImpl<$Res>
    implements $PaymentInfoModelCopyWith<$Res> {
  _$PaymentInfoModelCopyWithImpl(this._value, this._then);

  final PaymentInfoModel _value;
  // ignore: unused_field
  final $Res Function(PaymentInfoModel) _then;

  @override
  $Res call({
    Object? momo = freezed,
    Object? vnpay = freezed,
  }) {
    return _then(_value.copyWith(
      momo: momo == freezed
          ? _value.momo
          : momo // ignore: cast_nullable_to_non_nullable
              as PaymentConfigModel?,
      vnpay: vnpay == freezed
          ? _value.vnpay
          : vnpay // ignore: cast_nullable_to_non_nullable
              as PaymentConfigModel?,
    ));
  }

  @override
  $PaymentConfigModelCopyWith<$Res>? get momo {
    if (_value.momo == null) {
      return null;
    }

    return $PaymentConfigModelCopyWith<$Res>(_value.momo!, (value) {
      return _then(_value.copyWith(momo: value));
    });
  }

  @override
  $PaymentConfigModelCopyWith<$Res>? get vnpay {
    if (_value.vnpay == null) {
      return null;
    }

    return $PaymentConfigModelCopyWith<$Res>(_value.vnpay!, (value) {
      return _then(_value.copyWith(vnpay: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentInfoModelCopyWith<$Res>
    implements $PaymentInfoModelCopyWith<$Res> {
  factory _$PaymentInfoModelCopyWith(
          _PaymentInfoModel value, $Res Function(_PaymentInfoModel) then) =
      __$PaymentInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({PaymentConfigModel? momo, PaymentConfigModel? vnpay});

  @override
  $PaymentConfigModelCopyWith<$Res>? get momo;
  @override
  $PaymentConfigModelCopyWith<$Res>? get vnpay;
}

/// @nodoc
class __$PaymentInfoModelCopyWithImpl<$Res>
    extends _$PaymentInfoModelCopyWithImpl<$Res>
    implements _$PaymentInfoModelCopyWith<$Res> {
  __$PaymentInfoModelCopyWithImpl(
      _PaymentInfoModel _value, $Res Function(_PaymentInfoModel) _then)
      : super(_value, (v) => _then(v as _PaymentInfoModel));

  @override
  _PaymentInfoModel get _value => super._value as _PaymentInfoModel;

  @override
  $Res call({
    Object? momo = freezed,
    Object? vnpay = freezed,
  }) {
    return _then(_PaymentInfoModel(
      momo: momo == freezed
          ? _value.momo
          : momo // ignore: cast_nullable_to_non_nullable
              as PaymentConfigModel?,
      vnpay: vnpay == freezed
          ? _value.vnpay
          : vnpay // ignore: cast_nullable_to_non_nullable
              as PaymentConfigModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentInfoModel extends _PaymentInfoModel {
  _$_PaymentInfoModel({this.momo, this.vnpay}) : super._();

  factory _$_PaymentInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentInfoModelFromJson(json);

  @override
  final PaymentConfigModel? momo;
  @override
  final PaymentConfigModel? vnpay;

  @override
  String toString() {
    return 'PaymentInfoModel(momo: $momo, vnpay: $vnpay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentInfoModel &&
            const DeepCollectionEquality().equals(other.momo, momo) &&
            const DeepCollectionEquality().equals(other.vnpay, vnpay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(momo),
      const DeepCollectionEquality().hash(vnpay));

  @JsonKey(ignore: true)
  @override
  _$PaymentInfoModelCopyWith<_PaymentInfoModel> get copyWith =>
      __$PaymentInfoModelCopyWithImpl<_PaymentInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentInfoModelToJson(this);
  }
}

abstract class _PaymentInfoModel extends PaymentInfoModel {
  factory _PaymentInfoModel(
      {PaymentConfigModel? momo,
      PaymentConfigModel? vnpay}) = _$_PaymentInfoModel;
  _PaymentInfoModel._() : super._();

  factory _PaymentInfoModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentInfoModel.fromJson;

  @override
  PaymentConfigModel? get momo;
  @override
  PaymentConfigModel? get vnpay;
  @override
  @JsonKey(ignore: true)
  _$PaymentInfoModelCopyWith<_PaymentInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
