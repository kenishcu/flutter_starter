// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lang_meal_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LangMealTypeModel _$LangMealTypeModelFromJson(Map<String, dynamic> json) {
  return _LangMealTypeModel.fromJson(json);
}

/// @nodoc
mixin _$LangMealTypeModel {
  String? get mealTypeNameEN => throw _privateConstructorUsedError;
  String? get mealTypeNameVI => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LangMealTypeModelCopyWith<LangMealTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangMealTypeModelCopyWith<$Res> {
  factory $LangMealTypeModelCopyWith(
          LangMealTypeModel value, $Res Function(LangMealTypeModel) then) =
      _$LangMealTypeModelCopyWithImpl<$Res>;
  $Res call({String? mealTypeNameEN, String? mealTypeNameVI});
}

/// @nodoc
class _$LangMealTypeModelCopyWithImpl<$Res>
    implements $LangMealTypeModelCopyWith<$Res> {
  _$LangMealTypeModelCopyWithImpl(this._value, this._then);

  final LangMealTypeModel _value;
  // ignore: unused_field
  final $Res Function(LangMealTypeModel) _then;

  @override
  $Res call({
    Object? mealTypeNameEN = freezed,
    Object? mealTypeNameVI = freezed,
  }) {
    return _then(_value.copyWith(
      mealTypeNameEN: mealTypeNameEN == freezed
          ? _value.mealTypeNameEN
          : mealTypeNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      mealTypeNameVI: mealTypeNameVI == freezed
          ? _value.mealTypeNameVI
          : mealTypeNameVI // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LangMealTypeModelCopyWith<$Res>
    implements $LangMealTypeModelCopyWith<$Res> {
  factory _$$_LangMealTypeModelCopyWith(_$_LangMealTypeModel value,
          $Res Function(_$_LangMealTypeModel) then) =
      __$$_LangMealTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({String? mealTypeNameEN, String? mealTypeNameVI});
}

/// @nodoc
class __$$_LangMealTypeModelCopyWithImpl<$Res>
    extends _$LangMealTypeModelCopyWithImpl<$Res>
    implements _$$_LangMealTypeModelCopyWith<$Res> {
  __$$_LangMealTypeModelCopyWithImpl(
      _$_LangMealTypeModel _value, $Res Function(_$_LangMealTypeModel) _then)
      : super(_value, (v) => _then(v as _$_LangMealTypeModel));

  @override
  _$_LangMealTypeModel get _value => super._value as _$_LangMealTypeModel;

  @override
  $Res call({
    Object? mealTypeNameEN = freezed,
    Object? mealTypeNameVI = freezed,
  }) {
    return _then(_$_LangMealTypeModel(
      mealTypeNameEN: mealTypeNameEN == freezed
          ? _value.mealTypeNameEN
          : mealTypeNameEN // ignore: cast_nullable_to_non_nullable
              as String?,
      mealTypeNameVI: mealTypeNameVI == freezed
          ? _value.mealTypeNameVI
          : mealTypeNameVI // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LangMealTypeModel extends _LangMealTypeModel {
  _$_LangMealTypeModel({this.mealTypeNameEN, this.mealTypeNameVI}) : super._();

  factory _$_LangMealTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_LangMealTypeModelFromJson(json);

  @override
  final String? mealTypeNameEN;
  @override
  final String? mealTypeNameVI;

  @override
  String toString() {
    return 'LangMealTypeModel(mealTypeNameEN: $mealTypeNameEN, mealTypeNameVI: $mealTypeNameVI)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LangMealTypeModel &&
            const DeepCollectionEquality()
                .equals(other.mealTypeNameEN, mealTypeNameEN) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeNameVI, mealTypeNameVI));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mealTypeNameEN),
      const DeepCollectionEquality().hash(mealTypeNameVI));

  @JsonKey(ignore: true)
  @override
  _$$_LangMealTypeModelCopyWith<_$_LangMealTypeModel> get copyWith =>
      __$$_LangMealTypeModelCopyWithImpl<_$_LangMealTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LangMealTypeModelToJson(this);
  }
}

abstract class _LangMealTypeModel extends LangMealTypeModel {
  factory _LangMealTypeModel(
      {final String? mealTypeNameEN,
      final String? mealTypeNameVI}) = _$_LangMealTypeModel;
  _LangMealTypeModel._() : super._();

  factory _LangMealTypeModel.fromJson(Map<String, dynamic> json) =
      _$_LangMealTypeModel.fromJson;

  @override
  String? get mealTypeNameEN => throw _privateConstructorUsedError;
  @override
  String? get mealTypeNameVI => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LangMealTypeModelCopyWith<_$_LangMealTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
