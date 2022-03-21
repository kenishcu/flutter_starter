// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactModel _$ContactModelFromJson(Map<String, dynamic> json) {
  return _ContactModel.fromJson(json);
}

/// @nodoc
class _$ContactModelTearOff {
  const _$ContactModelTearOff();

  _ContactModel call(
      {String? id,
      String? hotLineName,
      int? hotLineNumber,
      int? parentId,
      String? parentName,
      int? status}) {
    return _ContactModel(
      id: id,
      hotLineName: hotLineName,
      hotLineNumber: hotLineNumber,
      parentId: parentId,
      parentName: parentName,
      status: status,
    );
  }

  ContactModel fromJson(Map<String, Object?> json) {
    return ContactModel.fromJson(json);
  }
}

/// @nodoc
const $ContactModel = _$ContactModelTearOff();

/// @nodoc
mixin _$ContactModel {
  String? get id => throw _privateConstructorUsedError;
  String? get hotLineName => throw _privateConstructorUsedError;
  int? get hotLineNumber => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  String? get parentName => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactModelCopyWith<ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? hotLineName,
      int? hotLineNumber,
      int? parentId,
      String? parentName,
      int? status});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res> implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  final ContactModel _value;
  // ignore: unused_field
  final $Res Function(ContactModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? hotLineName = freezed,
    Object? hotLineNumber = freezed,
    Object? parentId = freezed,
    Object? parentName = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hotLineName: hotLineName == freezed
          ? _value.hotLineName
          : hotLineName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotLineNumber: hotLineNumber == freezed
          ? _value.hotLineNumber
          : hotLineNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ContactModelCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$ContactModelCopyWith(
          _ContactModel value, $Res Function(_ContactModel) then) =
      __$ContactModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? hotLineName,
      int? hotLineNumber,
      int? parentId,
      String? parentName,
      int? status});
}

/// @nodoc
class __$ContactModelCopyWithImpl<$Res> extends _$ContactModelCopyWithImpl<$Res>
    implements _$ContactModelCopyWith<$Res> {
  __$ContactModelCopyWithImpl(
      _ContactModel _value, $Res Function(_ContactModel) _then)
      : super(_value, (v) => _then(v as _ContactModel));

  @override
  _ContactModel get _value => super._value as _ContactModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? hotLineName = freezed,
    Object? hotLineNumber = freezed,
    Object? parentId = freezed,
    Object? parentName = freezed,
    Object? status = freezed,
  }) {
    return _then(_ContactModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hotLineName: hotLineName == freezed
          ? _value.hotLineName
          : hotLineName // ignore: cast_nullable_to_non_nullable
              as String?,
      hotLineNumber: hotLineNumber == freezed
          ? _value.hotLineNumber
          : hotLineNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentName: parentName == freezed
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactModel extends _ContactModel {
  _$_ContactModel(
      {this.id,
      this.hotLineName,
      this.hotLineNumber,
      this.parentId,
      this.parentName,
      this.status})
      : super._();

  factory _$_ContactModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContactModelFromJson(json);

  @override
  final String? id;
  @override
  final String? hotLineName;
  @override
  final int? hotLineNumber;
  @override
  final int? parentId;
  @override
  final String? parentName;
  @override
  final int? status;

  @override
  String toString() {
    return 'ContactModel(id: $id, hotLineName: $hotLineName, hotLineNumber: $hotLineNumber, parentId: $parentId, parentName: $parentName, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.hotLineName, hotLineName) &&
            const DeepCollectionEquality()
                .equals(other.hotLineNumber, hotLineNumber) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality()
                .equals(other.parentName, parentName) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(hotLineName),
      const DeepCollectionEquality().hash(hotLineNumber),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(parentName),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ContactModelCopyWith<_ContactModel> get copyWith =>
      __$ContactModelCopyWithImpl<_ContactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactModelToJson(this);
  }
}

abstract class _ContactModel extends ContactModel {
  factory _ContactModel(
      {String? id,
      String? hotLineName,
      int? hotLineNumber,
      int? parentId,
      String? parentName,
      int? status}) = _$_ContactModel;
  _ContactModel._() : super._();

  factory _ContactModel.fromJson(Map<String, dynamic> json) =
      _$_ContactModel.fromJson;

  @override
  String? get id;
  @override
  String? get hotLineName;
  @override
  int? get hotLineNumber;
  @override
  int? get parentId;
  @override
  String? get parentName;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$ContactModelCopyWith<_ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}
