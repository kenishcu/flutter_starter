// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemProductModel _$ItemProductModelFromJson(Map<String, dynamic> json) {
  return _ItemProductModel.fromJson(json);
}

/// @nodoc
class _$ItemProductModelTearOff {
  const _$ItemProductModelTearOff();

  _ItemProductModel call({ProductModel? product, String? edit, int? number}) {
    return _ItemProductModel(
      product: product,
      edit: edit,
      number: number,
    );
  }

  ItemProductModel fromJson(Map<String, Object?> json) {
    return ItemProductModel.fromJson(json);
  }
}

/// @nodoc
const $ItemProductModel = _$ItemProductModelTearOff();

/// @nodoc
mixin _$ItemProductModel {
  ProductModel? get product => throw _privateConstructorUsedError;
  String? get edit => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemProductModelCopyWith<ItemProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProductModelCopyWith<$Res> {
  factory $ItemProductModelCopyWith(
      ItemProductModel value, $Res Function(ItemProductModel) then) =
  _$ItemProductModelCopyWithImpl<$Res>;
  $Res call({ProductModel? product, String? edit, int? number});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$ItemProductModelCopyWithImpl<$Res>
    implements $ItemProductModelCopyWith<$Res> {
  _$ItemProductModelCopyWithImpl(this._value, this._then);

  final ItemProductModel _value;
  // ignore: unused_field
  final $Res Function(ItemProductModel) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? edit = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
      as ProductModel?,
      edit: edit == freezed
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
      as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
      as int?,
    ));
  }

  @override
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$ItemProductModelCopyWith<$Res>
    implements $ItemProductModelCopyWith<$Res> {
  factory _$ItemProductModelCopyWith(
      _ItemProductModel value, $Res Function(_ItemProductModel) then) =
  __$ItemProductModelCopyWithImpl<$Res>;
  @override
  $Res call({ProductModel? product, String? edit, int? number});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$ItemProductModelCopyWithImpl<$Res>
    extends _$ItemProductModelCopyWithImpl<$Res>
    implements _$ItemProductModelCopyWith<$Res> {
  __$ItemProductModelCopyWithImpl(
      _ItemProductModel _value, $Res Function(_ItemProductModel) _then)
      : super(_value, (v) => _then(v as _ItemProductModel));

  @override
  _ItemProductModel get _value => super._value as _ItemProductModel;

  @override
  $Res call({
    Object? product = freezed,
    Object? edit = freezed,
    Object? number = freezed,
  }) {
    return _then(_ItemProductModel(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
      as ProductModel?,
      edit: edit == freezed
          ? _value.edit
          : edit // ignore: cast_nullable_to_non_nullable
      as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
      as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemProductModel extends _ItemProductModel {
  _$_ItemProductModel({this.product, this.edit, this.number}) : super._();

  factory _$_ItemProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemProductModelFromJson(json);

  @override
  final ProductModel? product;
  @override
  final String? edit;
  @override
  final int? number;

  @override
  String toString() {
    return 'ItemProductModel(product: $product, edit: $edit, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemProductModel &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.edit, edit) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(edit),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$ItemProductModelCopyWith<_ItemProductModel> get copyWith =>
      __$ItemProductModelCopyWithImpl<_ItemProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemProductModelToJson(this);
  }
}

abstract class _ItemProductModel extends ItemProductModel {
  factory _ItemProductModel(
      {ProductModel? product, String? edit, int? number}) = _$_ItemProductModel;
  _ItemProductModel._() : super._();

  factory _ItemProductModel.fromJson(Map<String, dynamic> json) =
  _$_ItemProductModel.fromJson;

  @override
  ProductModel? get product;
  @override
  String? get edit;
  @override
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$ItemProductModelCopyWith<_ItemProductModel> get copyWith =>
      throw _privateConstructorUsedError;

}
