// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealTypeModel _$MealTypeModelFromJson(Map<String, dynamic> json) {
  return _MealTypeModel.fromJson(json);
}

/// @nodoc
class _$MealTypeModelTearOff {
  const _$MealTypeModelTearOff();

  _MealTypeModel call(
      {int? mealTypeId, String? mealTypeCode, String? mealTypeName}) {
    return _MealTypeModel(
      mealTypeId: mealTypeId,
      mealTypeCode: mealTypeCode,
      mealTypeName: mealTypeName,
    );
  }

  MealTypeModel fromJson(Map<String, Object?> json) {
    return MealTypeModel.fromJson(json);
  }
}

/// @nodoc
const $MealTypeModel = _$MealTypeModelTearOff();

/// @nodoc
mixin _$MealTypeModel {
  int? get mealTypeId => throw _privateConstructorUsedError;
  String? get mealTypeCode => throw _privateConstructorUsedError;
  String? get mealTypeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealTypeModelCopyWith<MealTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealTypeModelCopyWith<$Res> {
  factory $MealTypeModelCopyWith(
          MealTypeModel value, $Res Function(MealTypeModel) then) =
      _$MealTypeModelCopyWithImpl<$Res>;
  $Res call({int? mealTypeId, String? mealTypeCode, String? mealTypeName});
}

/// @nodoc
class _$MealTypeModelCopyWithImpl<$Res>
    implements $MealTypeModelCopyWith<$Res> {
  _$MealTypeModelCopyWithImpl(this._value, this._then);

  final MealTypeModel _value;
  // ignore: unused_field
  final $Res Function(MealTypeModel) _then;

  @override
  $Res call({
    Object? mealTypeId = freezed,
    Object? mealTypeCode = freezed,
    Object? mealTypeName = freezed,
  }) {
    return _then(_value.copyWith(
      mealTypeId: mealTypeId == freezed
          ? _value.mealTypeId
          : mealTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      mealTypeCode: mealTypeCode == freezed
          ? _value.mealTypeCode
          : mealTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      mealTypeName: mealTypeName == freezed
          ? _value.mealTypeName
          : mealTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MealTypeModelCopyWith<$Res>
    implements $MealTypeModelCopyWith<$Res> {
  factory _$MealTypeModelCopyWith(
          _MealTypeModel value, $Res Function(_MealTypeModel) then) =
      __$MealTypeModelCopyWithImpl<$Res>;
  @override
  $Res call({int? mealTypeId, String? mealTypeCode, String? mealTypeName});
}

/// @nodoc
class __$MealTypeModelCopyWithImpl<$Res>
    extends _$MealTypeModelCopyWithImpl<$Res>
    implements _$MealTypeModelCopyWith<$Res> {
  __$MealTypeModelCopyWithImpl(
      _MealTypeModel _value, $Res Function(_MealTypeModel) _then)
      : super(_value, (v) => _then(v as _MealTypeModel));

  @override
  _MealTypeModel get _value => super._value as _MealTypeModel;

  @override
  $Res call({
    Object? mealTypeId = freezed,
    Object? mealTypeCode = freezed,
    Object? mealTypeName = freezed,
  }) {
    return _then(_MealTypeModel(
      mealTypeId: mealTypeId == freezed
          ? _value.mealTypeId
          : mealTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      mealTypeCode: mealTypeCode == freezed
          ? _value.mealTypeCode
          : mealTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      mealTypeName: mealTypeName == freezed
          ? _value.mealTypeName
          : mealTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealTypeModel extends _MealTypeModel {
  _$_MealTypeModel({this.mealTypeId, this.mealTypeCode, this.mealTypeName})
      : super._();

  factory _$_MealTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MealTypeModelFromJson(json);

  @override
  final int? mealTypeId;
  @override
  final String? mealTypeCode;
  @override
  final String? mealTypeName;

  @override
  String toString() {
    return 'MealTypeModel(mealTypeId: $mealTypeId, mealTypeCode: $mealTypeCode, mealTypeName: $mealTypeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealTypeModel &&
            const DeepCollectionEquality()
                .equals(other.mealTypeId, mealTypeId) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeCode, mealTypeCode) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeName, mealTypeName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mealTypeId),
      const DeepCollectionEquality().hash(mealTypeCode),
      const DeepCollectionEquality().hash(mealTypeName));

  @JsonKey(ignore: true)
  @override
  _$MealTypeModelCopyWith<_MealTypeModel> get copyWith =>
      __$MealTypeModelCopyWithImpl<_MealTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealTypeModelToJson(this);
  }
}

abstract class _MealTypeModel extends MealTypeModel {
  factory _MealTypeModel(
      {int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName}) = _$_MealTypeModel;
  _MealTypeModel._() : super._();

  factory _MealTypeModel.fromJson(Map<String, dynamic> json) =
      _$_MealTypeModel.fromJson;

  @override
  int? get mealTypeId;
  @override
  String? get mealTypeCode;
  @override
  String? get mealTypeName;
  @override
  @JsonKey(ignore: true)
  _$MealTypeModelCopyWith<_MealTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
