// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
class _$OrderModelTearOff {
  const _$OrderModelTearOff();

  _OrderModel call(
      {String? id,
      String? bedName,
      int? bedId,
      int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? roomId,
      String? roomName,
      int? reservationId,
      int? createAt,
      String? status,
      String? paymentType,
      String? orderType,
      int? usedAt,
      List<ProductModel>? products}) {
    return _OrderModel(
      id: id,
      bedName: bedName,
      bedId: bedId,
      patientId: patientId,
      patientFullname: patientFullname,
      receptionQueueId: receptionQueueId,
      roomId: roomId,
      roomName: roomName,
      reservationId: reservationId,
      createAt: createAt,
      status: status,
      paymentType: paymentType,
      orderType: orderType,
      usedAt: usedAt,
      products: products,
    );
  }

  OrderModel fromJson(Map<String, Object?> json) {
    return OrderModel.fromJson(json);
  }
}

/// @nodoc
const $OrderModel = _$OrderModelTearOff();

/// @nodoc
mixin _$OrderModel {
  String? get id => throw _privateConstructorUsedError;
  String? get bedName => throw _privateConstructorUsedError;
  int? get bedId => throw _privateConstructorUsedError;
  int? get patientId => throw _privateConstructorUsedError;
  String? get patientFullname => throw _privateConstructorUsedError;
  String? get receptionQueueId => throw _privateConstructorUsedError;
  int? get roomId => throw _privateConstructorUsedError;
  String? get roomName => throw _privateConstructorUsedError;
  int? get reservationId => throw _privateConstructorUsedError;
  int? get createAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;
  int? get usedAt => throw _privateConstructorUsedError;
  List<ProductModel>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? bedName,
      int? bedId,
      int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? roomId,
      String? roomName,
      int? reservationId,
      int? createAt,
      String? status,
      String? paymentType,
      String? orderType,
      int? usedAt,
      List<ProductModel>? products});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bedName = freezed,
    Object? bedId = freezed,
    Object? patientId = freezed,
    Object? patientFullname = freezed,
    Object? receptionQueueId = freezed,
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? reservationId = freezed,
    Object? createAt = freezed,
    Object? status = freezed,
    Object? paymentType = freezed,
    Object? orderType = freezed,
    Object? usedAt = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
              as String?,
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationId: reservationId == freezed
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc
abstract class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(
          _OrderModel value, $Res Function(_OrderModel) then) =
      __$OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? bedName,
      int? bedId,
      int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? roomId,
      String? roomName,
      int? reservationId,
      int? createAt,
      String? status,
      String? paymentType,
      String? orderType,
      int? usedAt,
      List<ProductModel>? products});
}

/// @nodoc
class __$OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(
      _OrderModel _value, $Res Function(_OrderModel) _then)
      : super(_value, (v) => _then(v as _OrderModel));

  @override
  _OrderModel get _value => super._value as _OrderModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? bedName = freezed,
    Object? bedId = freezed,
    Object? patientId = freezed,
    Object? patientFullname = freezed,
    Object? receptionQueueId = freezed,
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? reservationId = freezed,
    Object? createAt = freezed,
    Object? status = freezed,
    Object? paymentType = freezed,
    Object? orderType = freezed,
    Object? usedAt = freezed,
    Object? products = freezed,
  }) {
    return _then(_OrderModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bedName: bedName == freezed
          ? _value.bedName
          : bedName // ignore: cast_nullable_to_non_nullable
              as String?,
      bedId: bedId == freezed
          ? _value.bedId
          : bedId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String?,
      reservationId: reservationId == freezed
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int?,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel extends _OrderModel {
  _$_OrderModel(
      {this.id,
      this.bedName,
      this.bedId,
      this.patientId,
      this.patientFullname,
      this.receptionQueueId,
      this.roomId,
      this.roomName,
      this.reservationId,
      this.createAt,
      this.status,
      this.paymentType,
      this.orderType,
      this.usedAt,
      this.products})
      : super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final String? id;
  @override
  final String? bedName;
  @override
  final int? bedId;
  @override
  final int? patientId;
  @override
  final String? patientFullname;
  @override
  final String? receptionQueueId;
  @override
  final int? roomId;
  @override
  final String? roomName;
  @override
  final int? reservationId;
  @override
  final int? createAt;
  @override
  final String? status;
  @override
  final String? paymentType;
  @override
  final String? orderType;
  @override
  final int? usedAt;
  @override
  final List<ProductModel>? products;

  @override
  String toString() {
    return 'OrderModel(id: $id, bedName: $bedName, bedId: $bedId, patientId: $patientId, patientFullname: $patientFullname, receptionQueueId: $receptionQueueId, roomId: $roomId, roomName: $roomName, reservationId: $reservationId, createAt: $createAt, status: $status, paymentType: $paymentType, orderType: $orderType, usedAt: $usedAt, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.bedName, bedName) &&
            const DeepCollectionEquality().equals(other.bedId, bedId) &&
            const DeepCollectionEquality().equals(other.patientId, patientId) &&
            const DeepCollectionEquality()
                .equals(other.patientFullname, patientFullname) &&
            const DeepCollectionEquality()
                .equals(other.receptionQueueId, receptionQueueId) &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality()
                .equals(other.reservationId, reservationId) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.paymentType, paymentType) &&
            const DeepCollectionEquality().equals(other.orderType, orderType) &&
            const DeepCollectionEquality().equals(other.usedAt, usedAt) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(bedName),
      const DeepCollectionEquality().hash(bedId),
      const DeepCollectionEquality().hash(patientId),
      const DeepCollectionEquality().hash(patientFullname),
      const DeepCollectionEquality().hash(receptionQueueId),
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(reservationId),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(paymentType),
      const DeepCollectionEquality().hash(orderType),
      const DeepCollectionEquality().hash(usedAt),
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel(
      {String? id,
      String? bedName,
      int? bedId,
      int? patientId,
      String? patientFullname,
      String? receptionQueueId,
      int? roomId,
      String? roomName,
      int? reservationId,
      int? createAt,
      String? status,
      String? paymentType,
      String? orderType,
      int? usedAt,
      List<ProductModel>? products}) = _$_OrderModel;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String? get id;
  @override
  String? get bedName;
  @override
  int? get bedId;
  @override
  int? get patientId;
  @override
  String? get patientFullname;
  @override
  String? get receptionQueueId;
  @override
  int? get roomId;
  @override
  String? get roomName;
  @override
  int? get reservationId;
  @override
  int? get createAt;
  @override
  String? get status;
  @override
  String? get paymentType;
  @override
  String? get orderType;
  @override
  int? get usedAt;
  @override
  List<ProductModel>? get products;
  @override
  @JsonKey(ignore: true)
  _$OrderModelCopyWith<_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
