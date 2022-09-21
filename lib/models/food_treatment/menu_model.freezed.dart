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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) {
  return _MenuModel.fromJson(json);
}

/// @nodoc
mixin _$MenuModel {
  String? get id => throw _privateConstructorUsedError;
  String? get menuCalendarDailyCode => throw _privateConstructorUsedError;
  String? get menuCalendarDailyName => throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get lang => throw _privateConstructorUsedError;

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
      String? orderType,
      Map<dynamic, dynamic>? lang});
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
    Object? lang = freezed,
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
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$$_MenuModelCopyWith(
          _$_MenuModel value, $Res Function(_$_MenuModel) then) =
      __$$_MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? menuCalendarDailyCode,
      String? menuCalendarDailyName,
      String? orderType,
      Map<dynamic, dynamic>? lang});
}

/// @nodoc
class __$$_MenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements _$$_MenuModelCopyWith<$Res> {
  __$$_MenuModelCopyWithImpl(
      _$_MenuModel _value, $Res Function(_$_MenuModel) _then)
      : super(_value, (v) => _then(v as _$_MenuModel));

  @override
  _$_MenuModel get _value => super._value as _$_MenuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? menuCalendarDailyCode = freezed,
    Object? menuCalendarDailyName = freezed,
    Object? orderType = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_MenuModel(
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
      lang: lang == freezed
          ? _value._lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
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
      this.orderType,
      final Map<dynamic, dynamic>? lang})
      : _lang = lang,
        super._();

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
    return 'MenuModel(id: $id, menuCalendarDailyCode: $menuCalendarDailyCode, menuCalendarDailyName: $menuCalendarDailyName, orderType: $orderType, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.menuCalendarDailyCode, menuCalendarDailyCode) &&
            const DeepCollectionEquality()
                .equals(other.menuCalendarDailyName, menuCalendarDailyName) &&
            const DeepCollectionEquality().equals(other.orderType, orderType) &&
            const DeepCollectionEquality().equals(other._lang, _lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(menuCalendarDailyCode),
      const DeepCollectionEquality().hash(menuCalendarDailyName),
      const DeepCollectionEquality().hash(orderType),
      const DeepCollectionEquality().hash(_lang));

  @JsonKey(ignore: true)
  @override
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      __$$_MenuModelCopyWithImpl<_$_MenuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuModelToJson(this);
  }
}

abstract class _MenuModel extends MenuModel {
  factory _MenuModel(
      {final String? id,
      final String? menuCalendarDailyCode,
      final String? menuCalendarDailyName,
      final String? orderType,
      final Map<dynamic, dynamic>? lang}) = _$_MenuModel;
  _MenuModel._() : super._();

  factory _MenuModel.fromJson(Map<String, dynamic> json) =
      _$_MenuModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get menuCalendarDailyCode => throw _privateConstructorUsedError;
  @override
  String? get menuCalendarDailyName => throw _privateConstructorUsedError;
  @override
  String? get orderType => throw _privateConstructorUsedError;
  @override
  Map<dynamic, dynamic>? get lang => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MenuModelCopyWith<_$_MenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
