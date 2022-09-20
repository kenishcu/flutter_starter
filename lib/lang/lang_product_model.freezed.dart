// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lang_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LangProductModel _$LangProductModelFromJson(Map<String, dynamic> json) {
  return _LangProductModel.fromJson(json);
}

/// @nodoc
mixin _$LangProductModel {
  String? get productNameVI => throw _privateConstructorUsedError;
  String? get productNameEN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LangProductModelCopyWith<LangProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangProductModelCopyWith<$Res> {
  factory $LangProductModelCopyWith(
          LangProductModel value, $Res Function(LangProductModel) then) =
      _$LangProductModelCopyWithImpl<$Res>;
  $Res call({String? productNameVI, String? productNameEN});
}

/// @nodoc
class _$LangProductModelCopyWithImpl<$Res>
    implements $LangProductModelCopyWith<$Res> {
  _$LangProductModelCopyWithImpl(this._value, this._then);

  final LangProductModel _value;
  // ignore: unused_field
  final $Res Function(LangProductModel) _then;

  @override
  $Res call({
    Object? productNameVI = freezed,
    Object? productNameEN = freezed,
  }) {
    return _then(_value.copyWith(
      productNameVI: productNameVI == freezed
          ? _value.productNameVI
          : productNameVI // ignore: cast_nullable_to_non_nullable
              as String?,
      productNameEN: productNameEN == freezed
          ? _value.productNameEN
          : productNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LangProductModelCopyWith<$Res>
    implements $LangProductModelCopyWith<$Res> {
  factory _$$_LangProductModelCopyWith(
          _$_LangProductModel value, $Res Function(_$_LangProductModel) then) =
      __$$_LangProductModelCopyWithImpl<$Res>;
  @override
  $Res call({String? productNameVI, String? productNameEN});
}

/// @nodoc
class __$$_LangProductModelCopyWithImpl<$Res>
    extends _$LangProductModelCopyWithImpl<$Res>
    implements _$$_LangProductModelCopyWith<$Res> {
  __$$_LangProductModelCopyWithImpl(
      _$_LangProductModel _value, $Res Function(_$_LangProductModel) _then)
      : super(_value, (v) => _then(v as _$_LangProductModel));

  @override
  _$_LangProductModel get _value => super._value as _$_LangProductModel;

  @override
  $Res call({
    Object? productNameVI = freezed,
    Object? productNameEN = freezed,
  }) {
    return _then(_$_LangProductModel(
      productNameVI: productNameVI == freezed
          ? _value.productNameVI
          : productNameVI // ignore: cast_nullable_to_non_nullable
              as String?,
      productNameEN: productNameEN == freezed
          ? _value.productNameEN
          : productNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LangProductModel extends _LangProductModel {
  _$_LangProductModel({this.productNameVI, this.productNameEN}) : super._();

  factory _$_LangProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_LangProductModelFromJson(json);

  @override
  final String? productNameVI;
  @override
  final String? productNameEN;

  @override
  String toString() {
    return 'LangProductModel(productNameVI: $productNameVI, productNameEN: $productNameEN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LangProductModel &&
            const DeepCollectionEquality()
                .equals(other.productNameVI, productNameVI) &&
            const DeepCollectionEquality()
                .equals(other.productNameEN, productNameEN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productNameVI),
      const DeepCollectionEquality().hash(productNameEN));

  @JsonKey(ignore: true)
  @override
  _$$_LangProductModelCopyWith<_$_LangProductModel> get copyWith =>
      __$$_LangProductModelCopyWithImpl<_$_LangProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LangProductModelToJson(this);
  }
}

abstract class _LangProductModel extends LangProductModel {
  factory _LangProductModel(
      {final String? productNameVI,
      final String? productNameEN}) = _$_LangProductModel;
  _LangProductModel._() : super._();

  factory _LangProductModel.fromJson(Map<String, dynamic> json) =
      _$_LangProductModel.fromJson;

  @override
  String? get productNameVI => throw _privateConstructorUsedError;
  @override
  String? get productNameEN => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LangProductModelCopyWith<_$_LangProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
