// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String? get categoryId => throw _privateConstructorUsedError;
  String? get categoryCode => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call(
      {String? categoryId,
      String? categoryCode,
      String? categoryName,
      Map<dynamic, dynamic>? lang});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? lang = freezed,
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
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? categoryId,
      String? categoryCode,
      String? categoryName,
      Map<dynamic, dynamic>? lang});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, (v) => _then(v as _$_CategoryModel));

  @override
  _$_CategoryModel get _value => super._value as _$_CategoryModel;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? categoryCode = freezed,
    Object? categoryName = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_CategoryModel(
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
      lang: lang == freezed
          ? _value._lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel extends _CategoryModel {
  _$_CategoryModel(
      {this.categoryId,
      this.categoryCode,
      this.categoryName,
      final Map<dynamic, dynamic>? lang})
      : _lang = lang,
        super._();

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  final String? categoryId;
  @override
  final String? categoryCode;
  @override
  final String? categoryName;
  final Map<dynamic, dynamic>? _lang;
  @override
  Map<dynamic, dynamic>? get lang {
    final value = _lang;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CategoryModel(categoryId: $categoryId, categoryCode: $categoryCode, categoryName: $categoryName, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality()
                .equals(other.categoryCode, categoryCode) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality().equals(other._lang, _lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(categoryCode),
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(_lang));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel extends CategoryModel {
  factory _CategoryModel(
      {final String? categoryId,
      final String? categoryCode,
      final String? categoryName,
      final Map<dynamic, dynamic>? lang}) = _$_CategoryModel;
  _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  String? get categoryId => throw _privateConstructorUsedError;
  @override
  String? get categoryCode => throw _privateConstructorUsedError;
  @override
  String? get categoryName => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic>? get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
