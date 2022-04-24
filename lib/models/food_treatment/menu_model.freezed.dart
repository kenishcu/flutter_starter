// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
class _$MenuModelTearOff {
  const _$MenuModelTearOff();

  _MenuModel call(
      {String? id,
        String? menuCalendarDailyCode,
        String? menuCalendarDailyName,
        String? orderType}) {
    return _MenuModel(
      id: id,
      menuCalendarDailyCode: menuCalendarDailyCode,
      menuCalendarDailyName: menuCalendarDailyName,
      orderType: orderType,
    );
  }

  MenuModel fromJson(Map<String, Object?> json) {
    return MenuModel.fromJson(json);
  }
}

/// @nodoc
const $MenuModel = _$MenuModelTearOff();

/// @nodoc
mixin _$MenuModel {
  String? get id => throw _privateConstructorUsedError;
  String? get menuCalendarDailyCode => throw _privateConstructorUsedError;
  String? get menuCalendarDailyName => throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
  _$MenuModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
        String? menuCalendarDailyCode,
        String? menuCalendarDailyName,
        String? orderType});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  final MenuModel _value;
  // ignore: unused_field
  final $Res Function(MenuModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? menuCalendarDailyCode = freezed,
    Object? menuCalendarDailyName = freezed,
    Object? orderType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
      as String?,
      menuCalendarDailyCode: menuCalendarDailyCode == freezed
          ? _value.menuCalendarDailyCode
          : menuCalendarDailyCode // ignore: cast_nullable_to_non_nullable
      as String?,
      menuCalendarDailyName: menuCalendarDailyName == freezed
          ? _value.menuCalendarDailyName
          : menuCalendarDailyName // ignore: cast_nullable_to_non_nullable
      as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
abstract class _$MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
      _MenuModel value, $Res Function(_MenuModel) then) =
  __$MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
        String? menuCalendarDailyCode,
        String? menuCalendarDailyName,
        String? orderType});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(_MenuModel _value, $Res Function(_MenuModel) _then)
      : super(_value, (v) => _then(v as _MenuModel));

  @override
  _MenuModel get _value => super._value as _MenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? menuCalendarDailyCode = freezed,
    Object? menuCalendarDailyName = freezed,
    Object? orderType = freezed,
  }) {
    return _then(_MenuModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
      as String?,
      menuCalendarDailyCode: menuCalendarDailyCode == freezed
          ? _value.menuCalendarDailyCode
          : menuCalendarDailyCode // ignore: cast_nullable_to_non_nullable
      as String?,
      menuCalendarDailyName: menuCalendarDailyName == freezed
          ? _value.menuCalendarDailyName
          : menuCalendarDailyName // ignore: cast_nullable_to_non_nullable
      as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuModel extends _MenuModel {
  _$_MenuModel(
      {this.id,
        this.menuCalendarDailyCode,
        this.menuCalendarDailyName,
        this.orderType})
      : super._();

  factory _$_MenuModel.fromJson(Map<String, dynamic> json) =>
      _$$_MenuModelFromJson(json);

  @override
  final String? id;
  @override
  final String? menuCalendarDailyCode;
  @override
  final String? menuCalendarDailyName;
  @override
  final String? orderType;

  @override
  String toString() {
    return 'MenuModel(id: $id, menuCalendarDailyCode: $menuCalendarDailyCode, menuCalendarDailyName: $menuCalendarDailyName, orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.menuCalendarDailyCode, menuCalendarDailyCode) &&
            const DeepCollectionEquality()
                .equals(other.menuCalendarDailyName, menuCalendarDailyName) &&
            const DeepCollectionEquality().equals(other.orderType, orderType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(menuCalendarDailyCode),
      const DeepCollectionEquality().hash(menuCalendarDailyName),
      const DeepCollectionEquality().hash(orderType));

  @JsonKey(ignore: true)
  @override
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuModelToJson(this);
  }
}

abstract class _MenuModel extends MenuModel {
  factory _MenuModel(
      {String? id,
        String? menuCalendarDailyCode,
        String? menuCalendarDailyName,
        String? orderType}) = _$_MenuModel;
  _MenuModel._() : super._();

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
  _$_MenuModel.fromJson;

  @override
  String? get id;
  @override
  String? get menuCalendarDailyCode;
  @override
  String? get menuCalendarDailyName;
  @override
  String? get orderType;
  @override
  @JsonKey(ignore: true)
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
