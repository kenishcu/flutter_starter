// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lang_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LangCategoryModel _$LangCategoryModelFromJson(Map<String, dynamic> json) {
  return _LangCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$LangCategoryModel {
  String? get categoryNameVI => throw _privateConstructorUsedError;
  String? get categoryNameEN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LangCategoryModelCopyWith<LangCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangCategoryModelCopyWith<$Res> {
  factory $LangCategoryModelCopyWith(
          LangCategoryModel value, $Res Function(LangCategoryModel) then) =
      _$LangCategoryModelCopyWithImpl<$Res>;
  $Res call({String? categoryNameVI, String? categoryNameEN});
}

/// @nodoc
class _$LangCategoryModelCopyWithImpl<$Res>
    implements $LangCategoryModelCopyWith<$Res> {
  _$LangCategoryModelCopyWithImpl(this._value, this._then);

  final LangCategoryModel _value;
  // ignore: unused_field
  final $Res Function(LangCategoryModel) _then;

  @override
  $Res call({
    Object? categoryNameVI = freezed,
    Object? categoryNameEN = freezed,
  }) {
    return _then(_value.copyWith(
      categoryNameVI: categoryNameVI == freezed
          ? _value.categoryNameVI
          : categoryNameVI // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameEN: categoryNameEN == freezed
          ? _value.categoryNameEN
          : categoryNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LangCategoryModelCopyWith<$Res>
    implements $LangCategoryModelCopyWith<$Res> {
  factory _$$_LangCategoryModelCopyWith(_$_LangCategoryModel value,
          $Res Function(_$_LangCategoryModel) then) =
      __$$_LangCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String? categoryNameVI, String? categoryNameEN});
}

/// @nodoc
class __$$_LangCategoryModelCopyWithImpl<$Res>
    extends _$LangCategoryModelCopyWithImpl<$Res>
    implements _$$_LangCategoryModelCopyWith<$Res> {
  __$$_LangCategoryModelCopyWithImpl(
      _$_LangCategoryModel _value, $Res Function(_$_LangCategoryModel) _then)
      : super(_value, (v) => _then(v as _$_LangCategoryModel));

  @override
  _$_LangCategoryModel get _value => super._value as _$_LangCategoryModel;

  @override
  $Res call({
    Object? categoryNameVI = freezed,
    Object? categoryNameEN = freezed,
  }) {
    return _then(_$_LangCategoryModel(
      categoryNameVI: categoryNameVI == freezed
          ? _value.categoryNameVI
          : categoryNameVI // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameEN: categoryNameEN == freezed
          ? _value.categoryNameEN
          : categoryNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LangCategoryModel extends _LangCategoryModel {
  _$_LangCategoryModel({this.categoryNameVI, this.categoryNameEN}) : super._();

  factory _$_LangCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_LangCategoryModelFromJson(json);

  @override
  final String? categoryNameVI;
  @override
  final String? categoryNameEN;

  @override
  String toString() {
    return 'LangCategoryModel(categoryNameVI: $categoryNameVI, categoryNameEN: $categoryNameEN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LangCategoryModel &&
            const DeepCollectionEquality()
                .equals(other.categoryNameVI, categoryNameVI) &&
            const DeepCollectionEquality()
                .equals(other.categoryNameEN, categoryNameEN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryNameVI),
      const DeepCollectionEquality().hash(categoryNameEN));

  @JsonKey(ignore: true)
  @override
  _$$_LangCategoryModelCopyWith<_$_LangCategoryModel> get copyWith =>
      __$$_LangCategoryModelCopyWithImpl<_$_LangCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LangCategoryModelToJson(this);
  }
}

abstract class _LangCategoryModel extends LangCategoryModel {
  factory _LangCategoryModel(
      {final String? categoryNameVI,
      final String? categoryNameEN}) = _$_LangCategoryModel;
  _LangCategoryModel._() : super._();

  factory _LangCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_LangCategoryModel.fromJson;

  @override
  String? get categoryNameVI => throw _privateConstructorUsedError;
  @override
  String? get categoryNameEN => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LangCategoryModelCopyWith<_$_LangCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
