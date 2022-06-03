// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationContentModel _$NotificationContentModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationContentModel.fromJson(json);
}

/// @nodoc
class _$NotificationContentModelTearOff {
  const _$NotificationContentModelTearOff();

  _NotificationContentModel call({String? form, String? reservation}) {
    return _NotificationContentModel(
      form: form,
      reservation: reservation,
    );
  }

  NotificationContentModel fromJson(Map<String, Object?> json) {
    return NotificationContentModel.fromJson(json);
  }
}

/// @nodoc
const $NotificationContentModel = _$NotificationContentModelTearOff();

/// @nodoc
mixin _$NotificationContentModel {
  String? get form => throw _privateConstructorUsedError;
  String? get reservation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationContentModelCopyWith<NotificationContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationContentModelCopyWith<$Res> {
  factory $NotificationContentModelCopyWith(NotificationContentModel value,
          $Res Function(NotificationContentModel) then) =
      _$NotificationContentModelCopyWithImpl<$Res>;
  $Res call({String? form, String? reservation});
}

/// @nodoc
class _$NotificationContentModelCopyWithImpl<$Res>
    implements $NotificationContentModelCopyWith<$Res> {
  _$NotificationContentModelCopyWithImpl(this._value, this._then);

  final NotificationContentModel _value;
  // ignore: unused_field
  final $Res Function(NotificationContentModel) _then;

  @override
  $Res call({
    Object? form = freezed,
    Object? reservation = freezed,
  }) {
    return _then(_value.copyWith(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String?,
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NotificationContentModelCopyWith<$Res>
    implements $NotificationContentModelCopyWith<$Res> {
  factory _$NotificationContentModelCopyWith(_NotificationContentModel value,
          $Res Function(_NotificationContentModel) then) =
      __$NotificationContentModelCopyWithImpl<$Res>;
  @override
  $Res call({String? form, String? reservation});
}

/// @nodoc
class __$NotificationContentModelCopyWithImpl<$Res>
    extends _$NotificationContentModelCopyWithImpl<$Res>
    implements _$NotificationContentModelCopyWith<$Res> {
  __$NotificationContentModelCopyWithImpl(_NotificationContentModel _value,
      $Res Function(_NotificationContentModel) _then)
      : super(_value, (v) => _then(v as _NotificationContentModel));

  @override
  _NotificationContentModel get _value =>
      super._value as _NotificationContentModel;

  @override
  $Res call({
    Object? form = freezed,
    Object? reservation = freezed,
  }) {
    return _then(_NotificationContentModel(
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String?,
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationContentModel extends _NotificationContentModel {
  _$_NotificationContentModel({this.form, this.reservation}) : super._();

  factory _$_NotificationContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationContentModelFromJson(json);

  @override
  final String? form;
  @override
  final String? reservation;

  @override
  String toString() {
    return 'NotificationContentModel(form: $form, reservation: $reservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationContentModel &&
            const DeepCollectionEquality().equals(other.form, form) &&
            const DeepCollectionEquality()
                .equals(other.reservation, reservation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(form),
      const DeepCollectionEquality().hash(reservation));

  @JsonKey(ignore: true)
  @override
  _$NotificationContentModelCopyWith<_NotificationContentModel> get copyWith =>
      __$NotificationContentModelCopyWithImpl<_NotificationContentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationContentModelToJson(this);
  }
}

abstract class _NotificationContentModel extends NotificationContentModel {
  factory _NotificationContentModel({String? form, String? reservation}) =
      _$_NotificationContentModel;
  _NotificationContentModel._() : super._();

  factory _NotificationContentModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationContentModel.fromJson;

  @override
  String? get form;
  @override
  String? get reservation;
  @override
  @JsonKey(ignore: true)
  _$NotificationContentModelCopyWith<_NotificationContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
