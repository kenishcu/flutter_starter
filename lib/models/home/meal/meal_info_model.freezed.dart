// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealInfoModel _$MealInfoModelFromJson(Map<String, dynamic> json) {
  return _MealInfoModel.fromJson(json);
}

/// @nodoc
class _$MealInfoModelTearOff {
  const _$MealInfoModelTearOff();

  _MealInfoModel call(
      {String? productId,
      String? name,
      int? quantity,
      String? unit,
      String? note}) {
    return _MealInfoModel(
      productId: productId,
      name: name,
      quantity: quantity,
      unit: unit,
      note: note,
    );
  }

  MealInfoModel fromJson(Map<String, Object?> json) {
    return MealInfoModel.fromJson(json);
  }
}

/// @nodoc
const $MealInfoModel = _$MealInfoModelTearOff();

/// @nodoc
mixin _$MealInfoModel {
  String? get productId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealInfoModelCopyWith<MealInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealInfoModelCopyWith<$Res> {
  factory $MealInfoModelCopyWith(
          MealInfoModel value, $Res Function(MealInfoModel) then) =
      _$MealInfoModelCopyWithImpl<$Res>;
  $Res call(
      {String? productId,
      String? name,
      int? quantity,
      String? unit,
      String? note});
}

/// @nodoc
class _$MealInfoModelCopyWithImpl<$Res>
    implements $MealInfoModelCopyWith<$Res> {
  _$MealInfoModelCopyWithImpl(this._value, this._then);

  final MealInfoModel _value;
  // ignore: unused_field
  final $Res Function(MealInfoModel) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MealInfoModelCopyWith<$Res>
    implements $MealInfoModelCopyWith<$Res> {
  factory _$MealInfoModelCopyWith(
          _MealInfoModel value, $Res Function(_MealInfoModel) then) =
      __$MealInfoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? productId,
      String? name,
      int? quantity,
      String? unit,
      String? note});
}

/// @nodoc
class __$MealInfoModelCopyWithImpl<$Res>
    extends _$MealInfoModelCopyWithImpl<$Res>
    implements _$MealInfoModelCopyWith<$Res> {
  __$MealInfoModelCopyWithImpl(
      _MealInfoModel _value, $Res Function(_MealInfoModel) _then)
      : super(_value, (v) => _then(v as _MealInfoModel));

  @override
  _MealInfoModel get _value => super._value as _MealInfoModel;

  @override
  $Res call({
    Object? productId = freezed,
    Object? name = freezed,
    Object? quantity = freezed,
    Object? unit = freezed,
    Object? note = freezed,
  }) {
    return _then(_MealInfoModel(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealInfoModel extends _MealInfoModel {
  _$_MealInfoModel(
      {this.productId, this.name, this.quantity, this.unit, this.note})
      : super._();

  factory _$_MealInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_MealInfoModelFromJson(json);

  @override
  final String? productId;
  @override
  final String? name;
  @override
  final int? quantity;
  @override
  final String? unit;
  @override
  final String? note;

  @override
  String toString() {
    return 'MealInfoModel(productId: $productId, name: $name, quantity: $quantity, unit: $unit, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealInfoModel &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$MealInfoModelCopyWith<_MealInfoModel> get copyWith =>
      __$MealInfoModelCopyWithImpl<_MealInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealInfoModelToJson(this);
  }
}

abstract class _MealInfoModel extends MealInfoModel {
  factory _MealInfoModel(
      {String? productId,
      String? name,
      int? quantity,
      String? unit,
      String? note}) = _$_MealInfoModel;
  _MealInfoModel._() : super._();

  factory _MealInfoModel.fromJson(Map<String, dynamic> json) =
      _$_MealInfoModel.fromJson;

  @override
  String? get productId;
  @override
  String? get name;
  @override
  int? get quantity;
  @override
  String? get unit;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$MealInfoModelCopyWith<_MealInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
