// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceDataModel _$ServiceDataModelFromJson(Map<String, dynamic> json) {
  return _ServiceDataModel.fromJson(json);
}

/// @nodoc
class _$ServiceDataModelTearOff {
  const _$ServiceDataModelTearOff();

  _ServiceDataModel call(
      {String? serviceCode, int? serviceId, String? serviceName}) {
    return _ServiceDataModel(
      serviceCode: serviceCode,
      serviceId: serviceId,
      serviceName: serviceName,
    );
  }

  ServiceDataModel fromJson(Map<String, Object?> json) {
    return ServiceDataModel.fromJson(json);
  }
}

/// @nodoc
const $ServiceDataModel = _$ServiceDataModelTearOff();

/// @nodoc
mixin _$ServiceDataModel {
  String? get serviceCode => throw _privateConstructorUsedError;
  int? get serviceId => throw _privateConstructorUsedError;
  String? get serviceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDataModelCopyWith<ServiceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataModelCopyWith<$Res> {
  factory $ServiceDataModelCopyWith(
          ServiceDataModel value, $Res Function(ServiceDataModel) then) =
      _$ServiceDataModelCopyWithImpl<$Res>;
  $Res call({String? serviceCode, int? serviceId, String? serviceName});
}

/// @nodoc
class _$ServiceDataModelCopyWithImpl<$Res>
    implements $ServiceDataModelCopyWith<$Res> {
  _$ServiceDataModelCopyWithImpl(this._value, this._then);

  final ServiceDataModel _value;
  // ignore: unused_field
  final $Res Function(ServiceDataModel) _then;

  @override
  $Res call({
    Object? serviceCode = freezed,
    Object? serviceId = freezed,
    Object? serviceName = freezed,
  }) {
    return _then(_value.copyWith(
      serviceCode: serviceCode == freezed
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ServiceDataModelCopyWith<$Res>
    implements $ServiceDataModelCopyWith<$Res> {
  factory _$ServiceDataModelCopyWith(
          _ServiceDataModel value, $Res Function(_ServiceDataModel) then) =
      __$ServiceDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? serviceCode, int? serviceId, String? serviceName});
}

/// @nodoc
class __$ServiceDataModelCopyWithImpl<$Res>
    extends _$ServiceDataModelCopyWithImpl<$Res>
    implements _$ServiceDataModelCopyWith<$Res> {
  __$ServiceDataModelCopyWithImpl(
      _ServiceDataModel _value, $Res Function(_ServiceDataModel) _then)
      : super(_value, (v) => _then(v as _ServiceDataModel));

  @override
  _ServiceDataModel get _value => super._value as _ServiceDataModel;

  @override
  $Res call({
    Object? serviceCode = freezed,
    Object? serviceId = freezed,
    Object? serviceName = freezed,
  }) {
    return _then(_ServiceDataModel(
      serviceCode: serviceCode == freezed
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceDataModel extends _ServiceDataModel {
  _$_ServiceDataModel({this.serviceCode, this.serviceId, this.serviceName})
      : super._();

  factory _$_ServiceDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceDataModelFromJson(json);

  @override
  final String? serviceCode;
  @override
  final int? serviceId;
  @override
  final String? serviceName;

  @override
  String toString() {
    return 'ServiceDataModel(serviceCode: $serviceCode, serviceId: $serviceId, serviceName: $serviceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceDataModel &&
            const DeepCollectionEquality()
                .equals(other.serviceCode, serviceCode) &&
            const DeepCollectionEquality().equals(other.serviceId, serviceId) &&
            const DeepCollectionEquality()
                .equals(other.serviceName, serviceName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serviceCode),
      const DeepCollectionEquality().hash(serviceId),
      const DeepCollectionEquality().hash(serviceName));

  @JsonKey(ignore: true)
  @override
  _$ServiceDataModelCopyWith<_ServiceDataModel> get copyWith =>
      __$ServiceDataModelCopyWithImpl<_ServiceDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceDataModelToJson(this);
  }
}

abstract class _ServiceDataModel extends ServiceDataModel {
  factory _ServiceDataModel(
      {String? serviceCode,
      int? serviceId,
      String? serviceName}) = _$_ServiceDataModel;
  _ServiceDataModel._() : super._();

  factory _ServiceDataModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceDataModel.fromJson;

  @override
  String? get serviceCode;
  @override
  int? get serviceId;
  @override
  String? get serviceName;
  @override
  @JsonKey(ignore: true)
  _$ServiceDataModelCopyWith<_ServiceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
