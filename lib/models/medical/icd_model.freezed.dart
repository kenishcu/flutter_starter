// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'icd_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IcdModel _$IcdModelFromJson(Map<String, dynamic> json) {
  return _IcdModel.fromJson(json);
}

/// @nodoc
class _$IcdModelTearOff {
  const _$IcdModelTearOff();

  _IcdModel call({int? serviceId, String? serviceCode, String? serviceName}) {
    return _IcdModel(
      serviceId: serviceId,
      serviceCode: serviceCode,
      serviceName: serviceName,
    );
  }

  IcdModel fromJson(Map<String, Object?> json) {
    return IcdModel.fromJson(json);
  }
}

/// @nodoc
const $IcdModel = _$IcdModelTearOff();

/// @nodoc
mixin _$IcdModel {
  int? get serviceId => throw _privateConstructorUsedError;
  String? get serviceCode => throw _privateConstructorUsedError;
  String? get serviceName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IcdModelCopyWith<IcdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IcdModelCopyWith<$Res> {
  factory $IcdModelCopyWith(IcdModel value, $Res Function(IcdModel) then) =
      _$IcdModelCopyWithImpl<$Res>;
  $Res call({int? serviceId, String? serviceCode, String? serviceName});
}

/// @nodoc
class _$IcdModelCopyWithImpl<$Res> implements $IcdModelCopyWith<$Res> {
  _$IcdModelCopyWithImpl(this._value, this._then);

  final IcdModel _value;
  // ignore: unused_field
  final $Res Function(IcdModel) _then;

  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceCode = freezed,
    Object? serviceName = freezed,
  }) {
    return _then(_value.copyWith(
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceCode: serviceCode == freezed
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$IcdModelCopyWith<$Res> implements $IcdModelCopyWith<$Res> {
  factory _$IcdModelCopyWith(_IcdModel value, $Res Function(_IcdModel) then) =
      __$IcdModelCopyWithImpl<$Res>;
  @override
  $Res call({int? serviceId, String? serviceCode, String? serviceName});
}

/// @nodoc
class __$IcdModelCopyWithImpl<$Res> extends _$IcdModelCopyWithImpl<$Res>
    implements _$IcdModelCopyWith<$Res> {
  __$IcdModelCopyWithImpl(_IcdModel _value, $Res Function(_IcdModel) _then)
      : super(_value, (v) => _then(v as _IcdModel));

  @override
  _IcdModel get _value => super._value as _IcdModel;

  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceCode = freezed,
    Object? serviceName = freezed,
  }) {
    return _then(_IcdModel(
      serviceId: serviceId == freezed
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceCode: serviceCode == freezed
          ? _value.serviceCode
          : serviceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceName: serviceName == freezed
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IcdModel extends _IcdModel {
  _$_IcdModel({this.serviceId, this.serviceCode, this.serviceName}) : super._();

  factory _$_IcdModel.fromJson(Map<String, dynamic> json) =>
      _$$_IcdModelFromJson(json);

  @override
  final int? serviceId;
  @override
  final String? serviceCode;
  @override
  final String? serviceName;

  @override
  String toString() {
    return 'IcdModel(serviceId: $serviceId, serviceCode: $serviceCode, serviceName: $serviceName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IcdModel &&
            const DeepCollectionEquality().equals(other.serviceId, serviceId) &&
            const DeepCollectionEquality()
                .equals(other.serviceCode, serviceCode) &&
            const DeepCollectionEquality()
                .equals(other.serviceName, serviceName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serviceId),
      const DeepCollectionEquality().hash(serviceCode),
      const DeepCollectionEquality().hash(serviceName));

  @JsonKey(ignore: true)
  @override
  _$IcdModelCopyWith<_IcdModel> get copyWith =>
      __$IcdModelCopyWithImpl<_IcdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IcdModelToJson(this);
  }
}

abstract class _IcdModel extends IcdModel {
  factory _IcdModel(
      {int? serviceId, String? serviceCode, String? serviceName}) = _$_IcdModel;
  _IcdModel._() : super._();

  factory _IcdModel.fromJson(Map<String, dynamic> json) = _$_IcdModel.fromJson;

  @override
  int? get serviceId;
  @override
  String? get serviceCode;
  @override
  String? get serviceName;
  @override
  @JsonKey(ignore: true)
  _$IcdModelCopyWith<_IcdModel> get copyWith =>
      throw _privateConstructorUsedError;
}
