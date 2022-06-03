// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentConfigModel _$PaymentConfigModelFromJson(Map<String, dynamic> json) {
  return _PaymentConfigModel.fromJson(json);
}

/// @nodoc
class _$PaymentConfigModelTearOff {
  const _$PaymentConfigModelTearOff();

  _PaymentConfigModel call(
      {String? key,
      String? merchantName,
      String? merchantCode,
      String? ipAddress,
      String? vendor,
      String? terminalId,
      String? terminalName}) {
    return _PaymentConfigModel(
      key: key,
      merchantName: merchantName,
      merchantCode: merchantCode,
      ipAddress: ipAddress,
      vendor: vendor,
      terminalId: terminalId,
      terminalName: terminalName,
    );
  }

  PaymentConfigModel fromJson(Map<String, Object?> json) {
    return PaymentConfigModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentConfigModel = _$PaymentConfigModelTearOff();

/// @nodoc
mixin _$PaymentConfigModel {
  String? get key => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  String? get merchantCode => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  String? get terminalId => throw _privateConstructorUsedError;
  String? get terminalName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentConfigModelCopyWith<PaymentConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentConfigModelCopyWith<$Res> {
  factory $PaymentConfigModelCopyWith(
          PaymentConfigModel value, $Res Function(PaymentConfigModel) then) =
      _$PaymentConfigModelCopyWithImpl<$Res>;
  $Res call(
      {String? key,
      String? merchantName,
      String? merchantCode,
      String? ipAddress,
      String? vendor,
      String? terminalId,
      String? terminalName});
}

/// @nodoc
class _$PaymentConfigModelCopyWithImpl<$Res>
    implements $PaymentConfigModelCopyWith<$Res> {
  _$PaymentConfigModelCopyWithImpl(this._value, this._then);

  final PaymentConfigModel _value;
  // ignore: unused_field
  final $Res Function(PaymentConfigModel) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? merchantName = freezed,
    Object? merchantCode = freezed,
    Object? ipAddress = freezed,
    Object? vendor = freezed,
    Object? terminalId = freezed,
    Object? terminalName = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCode: merchantCode == freezed
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalId: terminalId == freezed
          ? _value.terminalId
          : terminalId // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalName: terminalName == freezed
          ? _value.terminalName
          : terminalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentConfigModelCopyWith<$Res>
    implements $PaymentConfigModelCopyWith<$Res> {
  factory _$PaymentConfigModelCopyWith(
          _PaymentConfigModel value, $Res Function(_PaymentConfigModel) then) =
      __$PaymentConfigModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? key,
      String? merchantName,
      String? merchantCode,
      String? ipAddress,
      String? vendor,
      String? terminalId,
      String? terminalName});
}

/// @nodoc
class __$PaymentConfigModelCopyWithImpl<$Res>
    extends _$PaymentConfigModelCopyWithImpl<$Res>
    implements _$PaymentConfigModelCopyWith<$Res> {
  __$PaymentConfigModelCopyWithImpl(
      _PaymentConfigModel _value, $Res Function(_PaymentConfigModel) _then)
      : super(_value, (v) => _then(v as _PaymentConfigModel));

  @override
  _PaymentConfigModel get _value => super._value as _PaymentConfigModel;

  @override
  $Res call({
    Object? key = freezed,
    Object? merchantName = freezed,
    Object? merchantCode = freezed,
    Object? ipAddress = freezed,
    Object? vendor = freezed,
    Object? terminalId = freezed,
    Object? terminalName = freezed,
  }) {
    return _then(_PaymentConfigModel(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCode: merchantCode == freezed
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalId: terminalId == freezed
          ? _value.terminalId
          : terminalId // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalName: terminalName == freezed
          ? _value.terminalName
          : terminalName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentConfigModel extends _PaymentConfigModel {
  _$_PaymentConfigModel(
      {this.key,
      this.merchantName,
      this.merchantCode,
      this.ipAddress,
      this.vendor,
      this.terminalId,
      this.terminalName})
      : super._();

  factory _$_PaymentConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentConfigModelFromJson(json);

  @override
  final String? key;
  @override
  final String? merchantName;
  @override
  final String? merchantCode;
  @override
  final String? ipAddress;
  @override
  final String? vendor;
  @override
  final String? terminalId;
  @override
  final String? terminalName;

  @override
  String toString() {
    return 'PaymentConfigModel(key: $key, merchantName: $merchantName, merchantCode: $merchantCode, ipAddress: $ipAddress, vendor: $vendor, terminalId: $terminalId, terminalName: $terminalName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentConfigModel &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.merchantName, merchantName) &&
            const DeepCollectionEquality()
                .equals(other.merchantCode, merchantCode) &&
            const DeepCollectionEquality().equals(other.ipAddress, ipAddress) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality()
                .equals(other.terminalId, terminalId) &&
            const DeepCollectionEquality()
                .equals(other.terminalName, terminalName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(merchantName),
      const DeepCollectionEquality().hash(merchantCode),
      const DeepCollectionEquality().hash(ipAddress),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(terminalId),
      const DeepCollectionEquality().hash(terminalName));

  @JsonKey(ignore: true)
  @override
  _$PaymentConfigModelCopyWith<_PaymentConfigModel> get copyWith =>
      __$PaymentConfigModelCopyWithImpl<_PaymentConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentConfigModelToJson(this);
  }
}

abstract class _PaymentConfigModel extends PaymentConfigModel {
  factory _PaymentConfigModel(
      {String? key,
      String? merchantName,
      String? merchantCode,
      String? ipAddress,
      String? vendor,
      String? terminalId,
      String? terminalName}) = _$_PaymentConfigModel;
  _PaymentConfigModel._() : super._();

  factory _PaymentConfigModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentConfigModel.fromJson;

  @override
  String? get key;
  @override
  String? get merchantName;
  @override
  String? get merchantCode;
  @override
  String? get ipAddress;
  @override
  String? get vendor;
  @override
  String? get terminalId;
  @override
  String? get terminalName;
  @override
  @JsonKey(ignore: true)
  _$PaymentConfigModelCopyWith<_PaymentConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}
