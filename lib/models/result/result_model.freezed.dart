// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
class _$ResultModelTearOff {
  const _$ResultModelTearOff();

  _ResultModel call(
      {dynamic results, dynamic error, bool? status, String? appVersion}) {
    return _ResultModel(
      results: results,
      error: error,
      status: status,
      appVersion: appVersion,
    );
  }

  ResultModel fromJson(Map<String, Object?> json) {
    return ResultModel.fromJson(json);
  }
}

/// @nodoc
const $ResultModel = _$ResultModelTearOff();

/// @nodoc
mixin _$ResultModel {
  dynamic get results => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res>;
  $Res call({dynamic results, dynamic error, bool? status, String? appVersion});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res> implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  final ResultModel _value;
  // ignore: unused_field
  final $Res Function(ResultModel) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
    Object? status = freezed,
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
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$ResultModelCopyWith(
          _ResultModel value, $Res Function(_ResultModel) then) =
      __$ResultModelCopyWithImpl<$Res>;
  @override
  $Res call({dynamic results, dynamic error, bool? status, String? appVersion});
}

/// @nodoc
class __$ResultModelCopyWithImpl<$Res> extends _$ResultModelCopyWithImpl<$Res>
    implements _$ResultModelCopyWith<$Res> {
  __$ResultModelCopyWithImpl(
      _ResultModel _value, $Res Function(_ResultModel) _then)
      : super(_value, (v) => _then(v as _ResultModel));

  @override
  _ResultModel get _value => super._value as _ResultModel;

  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? appVersion = freezed,
  }) {
    return _then(_ResultModel(
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
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultModel extends _ResultModel {
  _$_ResultModel({this.results, this.error, this.status, this.appVersion})
      : super._();

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultModelFromJson(json);

  @override
  final dynamic results;
  @override
  final dynamic error;
  @override
  final bool? status;
  @override
  final String? appVersion;

  @override
  String toString() {
    return 'ResultModel(results: $results, error: $error, status: $status, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultModel &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.appVersion, appVersion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(appVersion));

  @JsonKey(ignore: true)
  @override
  _$ResultModelCopyWith<_ResultModel> get copyWith =>
      __$ResultModelCopyWithImpl<_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultModelToJson(this);
  }
}

abstract class _ResultModel extends ResultModel {
  factory _ResultModel(
      {dynamic results,
      dynamic error,
      bool? status,
      String? appVersion}) = _$_ResultModel;
  _ResultModel._() : super._();

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

  @override
  dynamic get results;
  @override
  dynamic get error;
  @override
  bool? get status;
  @override
  String? get appVersion;
  @override
  @JsonKey(ignore: true)
  _$ResultModelCopyWith<_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
