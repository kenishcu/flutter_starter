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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealTypeModel _$MealTypeModelFromJson(Map<String, dynamic> json) {
  return _MealTypeModel.fromJson(json);
}

/// @nodoc
mixin _$MealTypeModel {
  int? get mealTypeId => throw _privateConstructorUsedError;
  String? get mealTypeCode => throw _privateConstructorUsedError;
  String? get mealTypeName => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get lang => throw _privateConstructorUsedError;

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
  $Res call(
      {int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName,
      Map<dynamic, dynamic>? lang});
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
    Object? lang = freezed,
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
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MealTypeModelCopyWith<$Res>
    implements $MealTypeModelCopyWith<$Res> {
  factory _$$_MealTypeModelCopyWith(
          _$_MealTypeModel value, $Res Function(_$_MealTypeModel) then) =
      __$$_MealTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName,
      Map<dynamic, dynamic>? lang});
}

/// @nodoc
class __$$_MealTypeModelCopyWithImpl<$Res>
    extends _$MealTypeModelCopyWithImpl<$Res>
    implements _$$_MealTypeModelCopyWith<$Res> {
  __$$_MealTypeModelCopyWithImpl(
      _$_MealTypeModel _value, $Res Function(_$_MealTypeModel) _then)
      : super(_value, (v) => _then(v as _$_MealTypeModel));

  @override
  _$_MealTypeModel get _value => super._value as _$_MealTypeModel;

  @override
  $Res call({
    Object? mealTypeId = freezed,
    Object? mealTypeCode = freezed,
    Object? mealTypeName = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_MealTypeModel(
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
      lang: lang == freezed
          ? _value._lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealTypeModel extends _MealTypeModel {
  _$_MealTypeModel(
      {this.mealTypeId,
      this.mealTypeCode,
      this.mealTypeName,
      final Map<dynamic, dynamic>? lang})
      : _lang = lang,
        super._();

  factory _$_MealTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_MealTypeModelFromJson(json);

  @override
  final int? mealTypeId;
  @override
  final String? mealTypeCode;
  @override
  final String? mealTypeName;
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
    return 'MealTypeModel(mealTypeId: $mealTypeId, mealTypeCode: $mealTypeCode, mealTypeName: $mealTypeName, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealTypeModel &&
            const DeepCollectionEquality()
                .equals(other.mealTypeId, mealTypeId) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeCode, mealTypeCode) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeName, mealTypeName) &&
            const DeepCollectionEquality().equals(other._lang, _lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mealTypeId),
      const DeepCollectionEquality().hash(mealTypeCode),
      const DeepCollectionEquality().hash(mealTypeName),
      const DeepCollectionEquality().hash(_lang));

  @JsonKey(ignore: true)
  @override
  _$$_MealTypeModelCopyWith<_$_MealTypeModel> get copyWith =>
      __$$_MealTypeModelCopyWithImpl<_$_MealTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealTypeModelToJson(this);
  }
}

abstract class _MealTypeModel extends MealTypeModel {
  factory _MealTypeModel(
      {final int? mealTypeId,
      final String? mealTypeCode,
      final String? mealTypeName,
      final Map<dynamic, dynamic>? lang}) = _$_MealTypeModel;
  _MealTypeModel._() : super._();

  factory _MealTypeModel.fromJson(Map<String, dynamic> json) =
      _$_MealTypeModel.fromJson;

  @override
  int? get mealTypeId => throw _privateConstructorUsedError;
  @override
  String? get mealTypeCode => throw _privateConstructorUsedError;
  @override
  String? get mealTypeName => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic>? get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MealTypeModelCopyWith<_$_MealTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
