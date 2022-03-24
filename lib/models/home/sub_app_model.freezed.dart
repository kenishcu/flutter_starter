// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sub_app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubAppModel _$SubAppModelFromJson(Map<String, dynamic> json) {
  return _SubAppModel.fromJson(json);
}

/// @nodoc
class _$SubAppModelTearOff {
  const _$SubAppModelTearOff();

  _SubAppModel call(
      {int? id,
      String? categoryCode,
      int? categoryName,
      String? thumbnailUrl,
      int? status}) {
    return _SubAppModel(
      id: id,
      categoryCode: categoryCode,
      categoryName: categoryName,
      thumbnailUrl: thumbnailUrl,
      status: status,
    );
  }

  SubAppModel fromJson(Map<String, Object?> json) {
    return SubAppModel.fromJson(json);
  }
}

/// @nodoc
const $SubAppModel = _$SubAppModelTearOff();

/// @nodoc
mixin _$SubAppModel {
  int? get id => throw _privateConstructorUsedError;
  String? get categoryCode => throw _privateConstructorUsedError;
  int? get categoryName => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubAppModelCopyWith<SubAppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubAppModelCopyWith<$Res> {
  factory $SubAppModelCopyWith(
          SubAppModel value, $Res Function(SubAppModel) then) =
      _$SubAppModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? categoryCode,
      int? categoryName,
      String? thumbnailUrl,
      int? status});
}

/// @nodoc
class _$SubAppModelCopyWithImpl<$Res> implements $SubAppModelCopyWith<$Res> {
  _$SubAppModelCopyWithImpl(this._value, this._then);

  final SubAppModel _value;
  // ignore: unused_field
  final $Res Function(SubAppModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SubAppModelCopyWith<$Res>
    implements $SubAppModelCopyWith<$Res> {
  factory _$SubAppModelCopyWith(
          _SubAppModel value, $Res Function(_SubAppModel) then) =
      __$SubAppModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? categoryCode,
      int? categoryName,
      String? thumbnailUrl,
      int? status});
}

/// @nodoc
class __$SubAppModelCopyWithImpl<$Res> extends _$SubAppModelCopyWithImpl<$Res>
    implements _$SubAppModelCopyWith<$Res> {
  __$SubAppModelCopyWithImpl(
      _SubAppModel _value, $Res Function(_SubAppModel) _then)
      : super(_value, (v) => _then(v as _SubAppModel));

  @override
  _SubAppModel get _value => super._value as _SubAppModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_SubAppModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubAppModel extends _SubAppModel {
  _$_SubAppModel(
      {this.id,
      this.categoryCode,
      this.categoryName,
      this.thumbnailUrl,
      this.status})
      : super._();

  factory _$_SubAppModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubAppModelFromJson(json);

  @override
  final int? id;
  @override
  final String? categoryCode;
  @override
  final int? categoryName;
  @override
  final String? thumbnailUrl;
  @override
  final int? status;

  @override
  String toString() {
    return 'SubAppModel(id: $id, categoryCode: $categoryCode, categoryName: $categoryName, thumbnailUrl: $thumbnailUrl, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubAppModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(categoryCode),
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(thumbnailUrl),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$SubAppModelCopyWith<_SubAppModel> get copyWith =>
      __$SubAppModelCopyWithImpl<_SubAppModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubAppModelToJson(this);
  }
}

abstract class _SubAppModel extends SubAppModel {
  factory _SubAppModel(
      {int? id,
      String? categoryCode,
      int? categoryName,
      String? thumbnailUrl,
      int? status}) = _$_SubAppModel;
  _SubAppModel._() : super._();

  factory _SubAppModel.fromJson(Map<String, dynamic> json) =
      _$_SubAppModel.fromJson;

  @override
  int? get id;
  @override
  String? get categoryCode;
  @override
  int? get categoryName;
  @override
  String? get thumbnailUrl;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$SubAppModelCopyWith<_SubAppModel> get copyWith =>
      throw _privateConstructorUsedError;
}
