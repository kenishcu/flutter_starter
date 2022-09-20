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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemProductModel _$ItemProductModelFromJson(Map<String, dynamic> json) {
  return _ItemProductModel.fromJson(json);
}

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
abstract class _$$_ItemProductModelCopyWith<$Res>
    implements $ItemProductModelCopyWith<$Res> {
  factory _$$_ItemProductModelCopyWith(
          _$_ItemProductModel value, $Res Function(_$_ItemProductModel) then) =
      __$$_ItemProductModelCopyWithImpl<$Res>;
  @override
  $Res call({ProductModel? product, String? edit, int? number});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_ItemProductModelCopyWithImpl<$Res>
    extends _$ItemProductModelCopyWithImpl<$Res>
    implements _$$_ItemProductModelCopyWith<$Res> {
  __$$_ItemProductModelCopyWithImpl(
      _$_ItemProductModel _value, $Res Function(_$_ItemProductModel) _then)
      : super(_value, (v) => _then(v as _$_ItemProductModel));

  @override
  _$_ItemProductModel get _value => super._value as _$_ItemProductModel;

  @override
  $Res call({
    Object? product = freezed,
    Object? edit = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_ItemProductModel(
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
            other is _$_ItemProductModel &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.edit, edit) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(edit),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_ItemProductModelCopyWith<_$_ItemProductModel> get copyWith =>
      __$$_ItemProductModelCopyWithImpl<_$_ItemProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemProductModelToJson(this);
  }
}

abstract class _ItemProductModel extends ItemProductModel {
  factory _ItemProductModel(
      {final ProductModel? product,
      final String? edit,
      final int? number}) = _$_ItemProductModel;
  _ItemProductModel._() : super._();

  factory _ItemProductModel.fromJson(Map<String, dynamic> json) =
      _$_ItemProductModel.fromJson;

  @override
  ProductModel? get product => throw _privateConstructorUsedError;
  @override
  String? get edit => throw _privateConstructorUsedError;
  @override
  int? get number => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemProductModelCopyWith<_$_ItemProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
