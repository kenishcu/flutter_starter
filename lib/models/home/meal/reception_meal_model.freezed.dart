// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reception_meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceptionMealModel _$ReceptionMealModelFromJson(Map<String, dynamic> json) {
  return _ReceptionMealModel.fromJson(json);
}

/// @nodoc
class _$ReceptionMealModelTearOff {
  const _$ReceptionMealModelTearOff();

  _ReceptionMealModel call(
      {int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? usedAt,
      int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName,
      List<MealInfoModel>? meals}) {
    return _ReceptionMealModel(
      patientId: patientId,
      patientFullname: patientFullname,
      receptionQueueId: receptionQueueId,
      usedAt: usedAt,
      mealTypeId: mealTypeId,
      mealTypeCode: mealTypeCode,
      mealTypeName: mealTypeName,
      meals: meals,
    );
  }

  ReceptionMealModel fromJson(Map<String, Object?> json) {
    return ReceptionMealModel.fromJson(json);
  }
}

/// @nodoc
const $ReceptionMealModel = _$ReceptionMealModelTearOff();

/// @nodoc
mixin _$ReceptionMealModel {
  int? get patientId => throw _privateConstructorUsedError;
  String? get patientFullname => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;
  int? get usedAt => throw _privateConstructorUsedError;
  int? get mealTypeId => throw _privateConstructorUsedError;
  String? get mealTypeCode => throw _privateConstructorUsedError;
  String? get mealTypeName => throw _privateConstructorUsedError;
  List<MealInfoModel>? get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceptionMealModelCopyWith<ReceptionMealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionMealModelCopyWith<$Res> {
  factory $ReceptionMealModelCopyWith(
          ReceptionMealModel value, $Res Function(ReceptionMealModel) then) =
      _$ReceptionMealModelCopyWithImpl<$Res>;
  $Res call(
      {int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? usedAt,
      int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName,
      List<MealInfoModel>? meals});
}

/// @nodoc
class _$ReceptionMealModelCopyWithImpl<$Res>
    implements $ReceptionMealModelCopyWith<$Res> {
  _$ReceptionMealModelCopyWithImpl(this._value, this._then);

  final ReceptionMealModel _value;
  // ignore: unused_field
  final $Res Function(ReceptionMealModel) _then;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFullname = freezed,
    Object? receptionQueueId = freezed,
    Object? usedAt = freezed,
    Object? mealTypeId = freezed,
    Object? mealTypeCode = freezed,
    Object? mealTypeName = freezed,
    Object? meals = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientFullname: patientFullname == freezed
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
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
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealInfoModel>?,
    ));
  }
}

/// @nodoc
abstract class _$ReceptionMealModelCopyWith<$Res>
    implements $ReceptionMealModelCopyWith<$Res> {
  factory _$ReceptionMealModelCopyWith(
          _ReceptionMealModel value, $Res Function(_ReceptionMealModel) then) =
      __$ReceptionMealModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? usedAt,
      int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName,
      List<MealInfoModel>? meals});
}

/// @nodoc
class __$ReceptionMealModelCopyWithImpl<$Res>
    extends _$ReceptionMealModelCopyWithImpl<$Res>
    implements _$ReceptionMealModelCopyWith<$Res> {
  __$ReceptionMealModelCopyWithImpl(
      _ReceptionMealModel _value, $Res Function(_ReceptionMealModel) _then)
      : super(_value, (v) => _then(v as _ReceptionMealModel));

  @override
  _ReceptionMealModel get _value => super._value as _ReceptionMealModel;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? patientFullname = freezed,
    Object? receptionQueueId = freezed,
    Object? usedAt = freezed,
    Object? mealTypeId = freezed,
    Object? mealTypeCode = freezed,
    Object? mealTypeName = freezed,
    Object? meals = freezed,
  }) {
    return _then(_ReceptionMealModel(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      patientFullname: patientFullname == freezed
          ? _value.patientFullname
          : patientFullname // ignore: cast_nullable_to_non_nullable
              as String?,
      receptionQueueId: receptionQueueId == freezed
          ? _value.receptionQueueId
          : receptionQueueId // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
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
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealInfoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceptionMealModel extends _ReceptionMealModel {
  _$_ReceptionMealModel(
      {this.patientId,
      this.patientFullname,
      this.receptionQueueId,
      this.usedAt,
      this.mealTypeId,
      this.mealTypeCode,
      this.mealTypeName,
      this.meals})
      : super._();

  factory _$_ReceptionMealModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReceptionMealModelFromJson(json);

  @override
  final int? patientId;
  @override
  final String? patientFullname;
  @override
  final String? receptionQueueId;
  @override
  final int? usedAt;
  @override
  final int? mealTypeId;
  @override
  final String? mealTypeCode;
  @override
  final String? mealTypeName;
  @override
  final List<MealInfoModel>? meals;

  @override
  String toString() {
    return 'ReceptionMealModel(patientId: $patientId, patientFullname: $patientFullname, receptionQueueId: $receptionQueueId, usedAt: $usedAt, mealTypeId: $mealTypeId, mealTypeCode: $mealTypeCode, mealTypeName: $mealTypeName, meals: $meals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceptionMealModel &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.patientFullname, patientFullname) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId) &&
            const DeepCollectionEquality().equals(other.usedAt, usedAt) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeId, mealTypeId) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeCode, mealTypeCode) &&
            const DeepCollectionEquality()
                .equals(other.mealTypeName, mealTypeName) &&
            const DeepCollectionEquality().equals(other.meals, meals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(patientFullname),
      const DeepCollectionEquality().hash(receptionQueueId),
      const DeepCollectionEquality().hash(usedAt),
      const DeepCollectionEquality().hash(mealTypeId),
      const DeepCollectionEquality().hash(mealTypeCode),
      const DeepCollectionEquality().hash(mealTypeName),
      const DeepCollectionEquality().hash(meals));

  @JsonKey(ignore: true)
  @override
  _$ReceptionMealModelCopyWith<_ReceptionMealModel> get copyWith =>
      __$ReceptionMealModelCopyWithImpl<_ReceptionMealModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceptionMealModelToJson(this);
  }
}

abstract class _ReceptionMealModel extends ReceptionMealModel {
  factory _ReceptionMealModel(
      {int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? usedAt,
      int? mealTypeId,
      String? mealTypeCode,
      String? mealTypeName,
      List<MealInfoModel>? meals}) = _$_ReceptionMealModel;
  _ReceptionMealModel._() : super._();

  factory _ReceptionMealModel.fromJson(Map<String, dynamic> json) =
      _$_ReceptionMealModel.fromJson;

  @override
  int? get patientId;
  @override
  String? get patientFullname;
  @override
  String? get receptionQueueId;
  @override
  int? get usedAt;
  @override
  int? get mealTypeId;
  @override
  String? get mealTypeCode;
  @override
  String? get mealTypeName;
  @override
  List<MealInfoModel>? get meals;
  @override
  @JsonKey(ignore: true)
  _$ReceptionMealModelCopyWith<_ReceptionMealModel> get copyWith =>
      throw _privateConstructorUsedError;
}
