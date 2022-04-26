// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
class _$BranchModelTearOff {
  const _$BranchModelTearOff();

  _BranchModel call(
      {String? branchId, String? branchCode, String? branchName}) {
    return _BranchModel(
      branchId: branchId,
      branchCode: branchCode,
      branchName: branchName,
    );
  }

  BranchModel fromJson(Map<String, Object?> json) {
    return BranchModel.fromJson(json);
  }
}

/// @nodoc
const $BranchModel = _$BranchModelTearOff();

/// @nodoc
mixin _$BranchModel {
  String? get branchId => throw _privateConstructorUsedError;
  String? get branchCode => throw _privateConstructorUsedError;
  String? get branchName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
      BranchModel value, $Res Function(BranchModel) then) =
  _$BranchModelCopyWithImpl<$Res>;
  $Res call({String? branchId, String? branchCode, String? branchName});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res> implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  final BranchModel _value;
  // ignore: unused_field
  final $Res Function(BranchModel) _then;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? branchCode = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_value.copyWith(
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
      as String?,
      branchCode: branchCode == freezed
          ? _value.branchCode
          : branchCode // ignore: cast_nullable_to_non_nullable
      as String?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
abstract class _$BranchModelCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$BranchModelCopyWith(
      _BranchModel value, $Res Function(_BranchModel) then) =
  __$BranchModelCopyWithImpl<$Res>;
  @override
  $Res call({String? branchId, String? branchCode, String? branchName});
}

/// @nodoc
class __$BranchModelCopyWithImpl<$Res> extends _$BranchModelCopyWithImpl<$Res>
    implements _$BranchModelCopyWith<$Res> {
  __$BranchModelCopyWithImpl(
      _BranchModel _value, $Res Function(_BranchModel) _then)
      : super(_value, (v) => _then(v as _BranchModel));

  @override
  _BranchModel get _value => super._value as _BranchModel;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? branchCode = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_BranchModel(
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
      as String?,
      branchCode: branchCode == freezed
          ? _value.branchCode
          : branchCode // ignore: cast_nullable_to_non_nullable
      as String?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchModel extends _BranchModel {
  _$_BranchModel({this.branchId, this.branchCode, this.branchName}) : super._();

  factory _$_BranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_BranchModelFromJson(json);

  @override
  final String? branchId;
  @override
  final String? branchCode;
  @override
  final String? branchName;

  @override
  String toString() {
    return 'BranchModel(branchId: $branchId, branchCode: $branchCode, branchName: $branchName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BranchModel &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality()
                .equals(other.branchCode, branchCode) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(branchCode),
      const DeepCollectionEquality().hash(branchName));

  @JsonKey(ignore: true)
  @override
  _$BranchModelCopyWith<_BranchModel> get copyWith =>
      __$BranchModelCopyWithImpl<_BranchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchModelToJson(this);
  }
}

abstract class _BranchModel extends BranchModel {
  factory _BranchModel(
      {String? branchId,
        String? branchCode,
        String? branchName}) = _$_BranchModel;
  _BranchModel._() : super._();

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
  _$_BranchModel.fromJson;

  @override
  String? get branchId;
  @override
  String? get branchCode;
  @override
  String? get branchName;
  @override
  @JsonKey(ignore: true)
  _$BranchModelCopyWith<_BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
