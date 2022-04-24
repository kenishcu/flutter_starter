// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sub_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubCategoryModel _$SubCategoryModelFromJson(Map<String, dynamic> json) {
  return _SubCategoryModel.fromJson(json);
}

/// @nodoc
class _$SubCategoryModelTearOff {
  const _$SubCategoryModelTearOff();

  _SubCategoryModel call(
      {String? categoryId, String? categoryCode, String? categoryName}) {
    return _SubCategoryModel(
      categoryId: categoryId,
      categoryCode: categoryCode,
      categoryName: categoryName,
    );
  }

  SubCategoryModel fromJson(Map<String, Object?> json) {
    return SubCategoryModel.fromJson(json);
  }
}

/// @nodoc
const $SubCategoryModel = _$SubCategoryModelTearOff();

/// @nodoc
mixin _$SubCategoryModel {
  String? get categoryId => throw _privateConstructorUsedError;
  String? get categoryCode => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryModelCopyWith<SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryModelCopyWith<$Res> {
  factory $SubCategoryModelCopyWith(
      SubCategoryModel value, $Res Function(SubCategoryModel) then) =
  _$SubCategoryModelCopyWithImpl<$Res>;
  $Res call({String? categoryId, String? categoryCode, String? categoryName});
}

/// @nodoc
class _$SubCategoryModelCopyWithImpl<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  _$SubCategoryModelCopyWithImpl(this._value, this._then);

  final SubCategoryModel _value;
  // ignore: unused_field
  final $Res Function(SubCategoryModel) _then;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
      as String?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
      as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
abstract class _$SubCategoryModelCopyWith<$Res>
    implements $SubCategoryModelCopyWith<$Res> {
  factory _$SubCategoryModelCopyWith(
      _SubCategoryModel value, $Res Function(_SubCategoryModel) then) =
  __$SubCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String? categoryId, String? categoryCode, String? categoryName});
}

/// @nodoc
class __$SubCategoryModelCopyWithImpl<$Res>
    extends _$SubCategoryModelCopyWithImpl<$Res>
    implements _$SubCategoryModelCopyWith<$Res> {
  __$SubCategoryModelCopyWithImpl(
      _SubCategoryModel _value, $Res Function(_SubCategoryModel) _then)
      : super(_value, (v) => _then(v as _SubCategoryModel));

  @override
  _SubCategoryModel get _value => super._value as _SubCategoryModel;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_SubCategoryModel(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
      as String?,
      categoryCode: categoryCode == freezed
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
      as String?,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubCategoryModel extends _SubCategoryModel {
  _$_SubCategoryModel({this.categoryId, this.categoryCode, this.categoryName})
      : super._();

  factory _$_SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryModelFromJson(json);

  @override
  final String? categoryId;
  @override
  final String? categoryCode;
  @override
  final String? categoryName;

  @override
  String toString() {
    return 'SubCategoryModel(categoryId: $categoryId, categoryCode: $categoryCode, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubCategoryModel &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(categoryCode),
      const DeepCollectionEquality().hash(categoryName));

  @JsonKey(ignore: true)
  @override
  _$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith =>
      __$SubCategoryModelCopyWithImpl<_SubCategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryModelToJson(this);
  }
}

abstract class _SubCategoryModel extends SubCategoryModel {
  factory _SubCategoryModel(
      {String? categoryId,
        String? categoryCode,
        String? categoryName}) = _$_SubCategoryModel;
  _SubCategoryModel._() : super._();

  factory _SubCategoryModel.fromJson(Map<String, dynamic> json) =
  _$_SubCategoryModel.fromJson;

  @override
  String? get categoryId;
  @override
  String? get categoryCode;
  @override
  String? get categoryName;
  @override
  @JsonKey(ignore: true)
  _$SubCategoryModelCopyWith<_SubCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
