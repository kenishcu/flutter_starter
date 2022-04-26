// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

/// @nodoc
class _$SettingModelTearOff {
  const _$SettingModelTearOff();

  _SettingModel call(
      {int? branchId,
        String? branchName,
        int? bedId,
        String? bedName,
        int? roomId,
        String? roomName,
        int? parentId,
        String? parentName,
        String? macAddress,
        String? ipAddress,
        String? deviceToken,
        String? hotLine,
        String? authToken,
        List<ContactModel>? contracts}) {
    return _SettingModel(
      branchId: branchId,
      branchName: branchName,
      bedId: bedId,
      bedName: bedName,
      roomId: roomId,
      roomName: roomName,
      parentId: parentId,
      parentName: parentName,
      macAddress: macAddress,
      ipAddress: ipAddress,
      deviceToken: deviceToken,
      hotLine: hotLine,
      authToken: authToken,
      contracts: contracts,
    );
  }

  SettingModel fromJson(Map<String, Object?> json) {
    return SettingModel.fromJson(json);
  }
}

/// @nodoc
const $SettingModel = _$SettingModelTearOff();

/// @nodoc
mixin _$SettingModel {
  int? get branchId => throw _privateConstructorUsedError;
  String? get branchName => throw _privateConstructorUsedError;
  int? get bedId => throw _privateConstructorUsedError;
  String? get bedName => throw _privateConstructorUsedError;
  int? get roomId => throw _privateConstructorUsedError;
  String? get roomName => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  String? get parentName => throw _privateConstructorUsedError;
  String? get macAddress => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get deviceToken => throw _privateConstructorUsedError;
  String? get hotLine => throw _privateConstructorUsedError;
  String? get authToken => throw _privateConstructorUsedError;
  List<ContactModel>? get contracts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingModelCopyWith<SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
      SettingModel value, $Res Function(SettingModel) then) =
  _$SettingModelCopyWithImpl<$Res>;
  $Res call(
      {int? branchId,
        String? branchName,
        int? bedId,
        String? bedName,
        int? roomId,
        String? roomName,
        int? parentId,
        String? parentName,
        String? macAddress,
        String? ipAddress,
        String? deviceToken,
        String? hotLine,
        String? authToken,
        List<ContactModel>? contracts});
}

/// @nodoc
class _$SettingModelCopyWithImpl<$Res> implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  final SettingModel _value;
  // ignore: unused_field
  final $Res Function(SettingModel) _then;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? branchName = freezed,
    Object? bedId = freezed,
    Object? bedName = freezed,
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? parentId = freezed,
    Object? parentName = freezed,
    Object? macAddress = freezed,
    Object? ipAddress = freezed,
    Object? deviceToken = freezed,
    Object? hotLine = freezed,
    Object? authToken = freezed,
    Object? contracts = freezed,
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
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
      as int?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
      as String?,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
      as int?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
      as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
      as int?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
      as String?,
      macAddress: macAddress == freezed
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
      as String?,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
      as String?,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
      as String?,
      hotLine: hotLine == freezed
          ? _value.hotLine
          : hotLine // ignore: cast_nullable_to_non_nullable
      as String?,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
      as String?,
      contracts: contracts == freezed
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
      as List<ContactModel>?,
    ));
  }
}

/// @nodoc
abstract class _$SettingModelCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$SettingModelCopyWith(
      _SettingModel value, $Res Function(_SettingModel) then) =
  __$SettingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? branchId,
        String? branchName,
        int? bedId,
        String? bedName,
        int? roomId,
        String? roomName,
        int? parentId,
        String? parentName,
        String? macAddress,
        String? ipAddress,
        String? deviceToken,
        String? hotLine,
        String? authToken,
        List<ContactModel>? contracts});
}

/// @nodoc
class __$SettingModelCopyWithImpl<$Res> extends _$SettingModelCopyWithImpl<$Res>
    implements _$SettingModelCopyWith<$Res> {
  __$SettingModelCopyWithImpl(
      _SettingModel _value, $Res Function(_SettingModel) _then)
      : super(_value, (v) => _then(v as _SettingModel));

  @override
  _SettingModel get _value => super._value as _SettingModel;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? branchName = freezed,
    Object? bedId = freezed,
    Object? bedName = freezed,
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? parentId = freezed,
    Object? parentName = freezed,
    Object? macAddress = freezed,
    Object? ipAddress = freezed,
    Object? deviceToken = freezed,
    Object? hotLine = freezed,
    Object? authToken = freezed,
    Object? contracts = freezed,
  }) {
    return _then(_SettingModel(
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
      as int?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
      as String?,
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
      as int?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
      as String?,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
      as int?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
      as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
      as int?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
      as String?,
      macAddress: macAddress == freezed
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
      as String?,
      ipAddress: ipAddress == freezed
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
      as String?,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
      as String?,
      hotLine: hotLine == freezed
          ? _value.hotLine
          : hotLine // ignore: cast_nullable_to_non_nullable
      as String?,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
      as String?,
      contracts: contracts == freezed
          ? _value.contracts
          : contracts // ignore: cast_nullable_to_non_nullable
      as List<ContactModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingModel extends _SettingModel {
  _$_SettingModel(
      {this.branchId,
        this.branchName,
        this.bedId,
        this.bedName,
        this.roomId,
        this.roomName,
        this.parentId,
        this.parentName,
        this.macAddress,
        this.ipAddress,
        this.deviceToken,
        this.hotLine,
        this.authToken,
        this.contracts})
      : super._();

  factory _$_SettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingModelFromJson(json);

  @override
  final int? branchId;
  @override
  final String? branchName;
  @override
  final int? bedId;
  @override
  final String? bedName;
  @override
  final int? roomId;
  @override
  final String? roomName;
  @override
  final int? parentId;
  @override
  final String? parentName;
  @override
  final String? macAddress;
  @override
  final String? ipAddress;
  @override
  final String? deviceToken;
  @override
  final String? hotLine;
  @override
  final String? authToken;
  @override
  final List<ContactModel>? contracts;

  @override
  String toString() {
    return 'SettingModel(branchId: $branchId, branchName: $branchName, bedId: $bedId, bedName: $bedName, roomId: $roomId, roomName: $roomName, parentId: $parentId, parentName: $parentName, macAddress: $macAddress, ipAddress: $ipAddress, deviceToken: $deviceToken, hotLine: $hotLine, authToken: $authToken, contracts: $contracts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingModel &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName) &&
            const DeepCollectionEquality().equals(other.bedId, bedId) &&
            const DeepCollectionEquality().equals(other.bedName, bedName) &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.parentName, parentName) &&
            const DeepCollectionEquality()
                .equals(other.macAddress, macAddress) &&
            const DeepCollectionEquality().equals(other.ipAddress, ipAddress) &&
            const DeepCollectionEquality()
                .equals(other.deviceToken, deviceToken) &&
            const DeepCollectionEquality().equals(other.hotLine, hotLine) &&
            const DeepCollectionEquality().equals(other.authToken, authToken) &&
            const DeepCollectionEquality().equals(other.contracts, contracts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(branchName),
      const DeepCollectionEquality().hash(bedId),
      const DeepCollectionEquality().hash(bedName),
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(parentName),
      const DeepCollectionEquality().hash(macAddress),
      const DeepCollectionEquality().hash(ipAddress),
      const DeepCollectionEquality().hash(deviceToken),
      const DeepCollectionEquality().hash(hotLine),
      const DeepCollectionEquality().hash(authToken),
      const DeepCollectionEquality().hash(contracts));

  @JsonKey(ignore: true)
  @override
  _$SettingModelCopyWith<_SettingModel> get copyWith =>
      __$SettingModelCopyWithImpl<_SettingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingModelToJson(this);
  }
}

abstract class _SettingModel extends SettingModel {
  factory _SettingModel(
      {int? branchId,
        String? branchName,
        int? bedId,
        String? bedName,
        int? roomId,
        String? roomName,
        int? parentId,
        String? parentName,
        String? macAddress,
        String? ipAddress,
        String? deviceToken,
        String? hotLine,
        String? authToken,
        List<ContactModel>? contracts}) = _$_SettingModel;
  _SettingModel._() : super._();

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
  _$_SettingModel.fromJson;

  @override
  int? get branchId;
  @override
  String? get branchName;
  @override
  int? get bedId;
  @override
  String? get bedName;
  @override
  int? get roomId;
  @override
  String? get roomName;
  @override
  int? get parentId;
  @override
  String? get parentName;
  @override
  String? get macAddress;
  @override
  String? get ipAddress;
  @override
  String? get deviceToken;
  @override
  String? get hotLine;
  @override
  String? get authToken;
  @override
  List<ContactModel>? get contracts;
  @override
  @JsonKey(ignore: true)
  _$SettingModelCopyWith<_SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
