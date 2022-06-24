// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vnpay_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VnPayModel _$VnPayModelFromJson(Map<String, dynamic> json) {
  return _VnPayModel.fromJson(json);
}

/// @nodoc
class _$VnPayModelTearOff {
  const _$VnPayModelTearOff();

  _VnPayModel call(
      {String? partnerCode,
      String? partnerRefId,
      String? ipAddress,
      String? vendor,
      String? amount,
      int? partnerRefCode}) {
    return _VnPayModel(
      partnerCode: partnerCode,
      partnerRefId: partnerRefId,
      ipAddress: ipAddress,
      vendor: vendor,
      amount: amount,
      partnerRefCode: partnerRefCode,
    );
  }

  VnPayModel fromJson(Map<String, Object?> json) {
    return VnPayModel.fromJson(json);
  }
}

/// @nodoc
const $VnPayModel = _$VnPayModelTearOff();

/// @nodoc
mixin _$VnPayModel {
  String? get partnerCode => throw _privateConstructorUsedError;
  String? get partnerRefId => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  int? get partnerRefCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VnPayModelCopyWith<VnPayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VnPayModelCopyWith<$Res> {
  factory $VnPayModelCopyWith(
          VnPayModel value, $Res Function(VnPayModel) then) =
      _$VnPayModelCopyWithImpl<$Res>;
  $Res call(
      {String? partnerCode,
      String? partnerRefId,
      String? ipAddress,
      String? vendor,
      String? amount,
      int? partnerRefCode});
}

/// @nodoc
class _$VnPayModelCopyWithImpl<$Res> implements $VnPayModelCopyWith<$Res> {
  _$VnPayModelCopyWithImpl(this._value, this._then);

  final VnPayModel _value;
  // ignore: unused_field
  final $Res Function(VnPayModel) _then;

  @override
  $Res call({
    Object? partnerCode = freezed,
    Object? partnerRefId = freezed,
    Object? ipAddress = freezed,
    Object? vendor = freezed,
    Object? amount = freezed,
    Object? partnerRefCode = freezed,
  }) {
    return _then(_value.copyWith(
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerRefId: partnerRefId == freezed
          ? _value.partnerRefId
          : partnerRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerRefCode: partnerRefCode == freezed
          ? _value.partnerRefCode
          : partnerRefCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VnPayModelCopyWith<$Res> implements $VnPayModelCopyWith<$Res> {
  factory _$VnPayModelCopyWith(
          _VnPayModel value, $Res Function(_VnPayModel) then) =
      __$VnPayModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? partnerCode,
      String? partnerRefId,
      String? ipAddress,
      String? vendor,
      String? amount,
      int? partnerRefCode});
}

/// @nodoc
class __$VnPayModelCopyWithImpl<$Res> extends _$VnPayModelCopyWithImpl<$Res>
    implements _$VnPayModelCopyWith<$Res> {
  __$VnPayModelCopyWithImpl(
      _VnPayModel _value, $Res Function(_VnPayModel) _then)
      : super(_value, (v) => _then(v as _VnPayModel));

  @override
  _VnPayModel get _value => super._value as _VnPayModel;

  @override
  $Res call({
    Object? partnerCode = freezed,
    Object? partnerRefId = freezed,
    Object? ipAddress = freezed,
    Object? vendor = freezed,
    Object? amount = freezed,
    Object? partnerRefCode = freezed,
  }) {
    return _then(_VnPayModel(
      partnerCode: partnerCode == freezed
          ? _value.partnerCode
          : partnerCode // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerRefId: partnerRefId == freezed
          ? _value.partnerRefId
          : partnerRefId // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerRefCode: partnerRefCode == freezed
          ? _value.partnerRefCode
          : partnerRefCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VnPayModel extends _VnPayModel {
  _$_VnPayModel(
      {this.partnerCode,
      this.partnerRefId,
      this.ipAddress,
      this.vendor,
      this.amount,
      this.partnerRefCode})
      : super._();

  factory _$_VnPayModel.fromJson(Map<String, dynamic> json) =>
      _$$_VnPayModelFromJson(json);

  @override
  final String? partnerCode;
  @override
  final String? partnerRefId;
  @override
  final String? ipAddress;
  @override
  final String? vendor;
  @override
  final String? amount;
  @override
  final int? partnerRefCode;

  @override
  String toString() {
    return 'VnPayModel(partnerCode: $partnerCode, partnerRefId: $partnerRefId, ipAddress: $ipAddress, vendor: $vendor, amount: $amount, partnerRefCode: $partnerRefCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VnPayModel &&
            const DeepCollectionEquality()
                .equals(other.partnerCode, partnerCode) &&
            const DeepCollectionEquality()
                .equals(other.partnerRefId, partnerRefId) &&
            const DeepCollectionEquality().equals(other.ipAddress, ipAddress) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.partnerRefCode, partnerRefCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(partnerCode),
      const DeepCollectionEquality().hash(partnerRefId),
      const DeepCollectionEquality().hash(ipAddress),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(partnerRefCode));

  @JsonKey(ignore: true)
  @override
  _$VnPayModelCopyWith<_VnPayModel> get copyWith =>
      __$VnPayModelCopyWithImpl<_VnPayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VnPayModelToJson(this);
  }
}

abstract class _VnPayModel extends VnPayModel {
  factory _VnPayModel(
      {String? partnerCode,
      String? partnerRefId,
      String? ipAddress,
      String? vendor,
      String? amount,
      int? partnerRefCode}) = _$_VnPayModel;
  _VnPayModel._() : super._();

  factory _VnPayModel.fromJson(Map<String, dynamic> json) =
      _$_VnPayModel.fromJson;

  @override
  String? get partnerCode;
  @override
  String? get partnerRefId;
  @override
  String? get ipAddress;
  @override
  String? get vendor;
  @override
  String? get amount;
  @override
  int? get partnerRefCode;
  @override
  @JsonKey(ignore: true)
  _$VnPayModelCopyWith<_VnPayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
