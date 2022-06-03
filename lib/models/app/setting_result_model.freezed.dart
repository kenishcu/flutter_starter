// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingResultModel _$SettingResultModelFromJson(Map<String, dynamic> json) {
  return _SettingResultModel.fromJson(json);
}

/// @nodoc
class _$SettingResultModelTearOff {
  const _$SettingResultModelTearOff();

  _SettingResultModel call(
      {dynamic results,
      dynamic error,
      bool? status,
      PaymentInfoModel? payment,
      String? appVersion}) {
    return _SettingResultModel(
      results: results,
      error: error,
      status: status,
      payment: payment,
      appVersion: appVersion,
    );
  }

  SettingResultModel fromJson(Map<String, Object?> json) {
    return SettingResultModel.fromJson(json);
  }
}

/// @nodoc
const $SettingResultModel = _$SettingResultModelTearOff();

/// @nodoc
mixin _$SettingResultModel {
  dynamic get results => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  PaymentInfoModel? get payment => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingResultModelCopyWith<SettingResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingResultModelCopyWith<$Res> {
  factory $SettingResultModelCopyWith(
          SettingResultModel value, $Res Function(SettingResultModel) then) =
      _$SettingResultModelCopyWithImpl<$Res>;
  $Res call(
      {dynamic results,
      dynamic error,
      bool? status,
      PaymentInfoModel? payment,
      String? appVersion});

  $PaymentInfoModelCopyWith<$Res>? get payment;
}

/// @nodoc
class _$SettingResultModelCopyWithImpl<$Res>
    implements $SettingResultModelCopyWith<$Res> {
  _$SettingResultModelCopyWithImpl(this._value, this._then);

  final SettingResultModel _value;
  // ignore: unused_field
  final $Res Function(SettingResultModel) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? payment = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentInfoModel?,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PaymentInfoModelCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentInfoModelCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc
abstract class _$SettingResultModelCopyWith<$Res>
    implements $SettingResultModelCopyWith<$Res> {
  factory _$SettingResultModelCopyWith(
          _SettingResultModel value, $Res Function(_SettingResultModel) then) =
      __$SettingResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic results,
      dynamic error,
      bool? status,
      PaymentInfoModel? payment,
      String? appVersion});

  @override
  $PaymentInfoModelCopyWith<$Res>? get payment;
}

/// @nodoc
class __$SettingResultModelCopyWithImpl<$Res>
    extends _$SettingResultModelCopyWithImpl<$Res>
    implements _$SettingResultModelCopyWith<$Res> {
  __$SettingResultModelCopyWithImpl(
      _SettingResultModel _value, $Res Function(_SettingResultModel) _then)
      : super(_value, (v) => _then(v as _SettingResultModel));

  @override
  _SettingResultModel get _value => super._value as _SettingResultModel;

  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? payment = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_SettingResultModel(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentInfoModel?,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingResultModel extends _SettingResultModel {
  _$_SettingResultModel(
      {this.results, this.error, this.status, this.payment, this.appVersion})
      : super._();

  factory _$_SettingResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingResultModelFromJson(json);

  @override
  final dynamic results;
  @override
  final dynamic error;
  @override
  final bool? status;
  @override
  final PaymentInfoModel? payment;
  @override
  final String? appVersion;

  @override
  String toString() {
    return 'SettingResultModel(results: $results, error: $error, status: $status, payment: $payment, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingResultModel &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.payment, payment) &&
            const DeepCollectionEquality()
                .equals(other.appVersion, appVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(payment),
      const DeepCollectionEquality().hash(appVersion));

  @JsonKey(ignore: true)
  @override
  _$SettingResultModelCopyWith<_SettingResultModel> get copyWith =>
      __$SettingResultModelCopyWithImpl<_SettingResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingResultModelToJson(this);
  }
}

abstract class _SettingResultModel extends SettingResultModel {
  factory _SettingResultModel(
      {dynamic results,
      dynamic error,
      bool? status,
      PaymentInfoModel? payment,
      String? appVersion}) = _$_SettingResultModel;
  _SettingResultModel._() : super._();

  factory _SettingResultModel.fromJson(Map<String, dynamic> json) =
      _$_SettingResultModel.fromJson;

  @override
  dynamic get results;
  @override
  dynamic get error;
  @override
  bool? get status;
  @override
  PaymentInfoModel? get payment;
  @override
  String? get appVersion;
  @override
  @JsonKey(ignore: true)
  _$SettingResultModelCopyWith<_SettingResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
