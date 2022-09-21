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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

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
  MealTypeModel? get mealTypeModel => throw _privateConstructorUsedError;
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
      MealTypeModel? mealTypeModel,
      int? usedAt,
      List<ProductModel>? products});

  $MealTypeModelCopyWith<$Res>? get mealTypeModel;
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
    Object? mealTypeModel = freezed,
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
      mealTypeModel: mealTypeModel == freezed
          ? _value.mealTypeModel
          : mealTypeModel // ignore: cast_nullable_to_non_nullable
              as MealTypeModel?,
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

  @override
  $MealTypeModelCopyWith<$Res>? get mealTypeModel {
    if (_value.mealTypeModel == null) {
      return null;
    }

    return $MealTypeModelCopyWith<$Res>(_value.mealTypeModel!, (value) {
      return _then(_value.copyWith(mealTypeModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
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
      MealTypeModel? mealTypeModel,
      int? usedAt,
      List<ProductModel>? products});

  @override
  $MealTypeModelCopyWith<$Res>? get mealTypeModel;
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, (v) => _then(v as _$_OrderModel));

  @override
  _$_OrderModel get _value => super._value as _$_OrderModel;

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
    Object? mealTypeModel = freezed,
    Object? usedAt = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_OrderModel(
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
      mealTypeModel: mealTypeModel == freezed
          ? _value.mealTypeModel
          : mealTypeModel // ignore: cast_nullable_to_non_nullable
              as MealTypeModel?,
      usedAt: usedAt == freezed
          ? _value.usedAt
          : usedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      products: products == freezed
          ? _value._products
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
      this.mealTypeModel,
      this.usedAt,
      final List<ProductModel>? products})
      : _products = products,
        super._();

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
  final MealTypeModel? mealTypeModel;
  @override
  final int? usedAt;
  final List<ProductModel>? _products;
  @override
  List<ProductModel>? get products {
    final value = _products;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, bedName: $bedName, bedId: $bedId, patientId: $patientId, patientFullname: $patientFullname, receptionQueueId: $receptionQueueId, roomId: $roomId, roomName: $roomName, reservationId: $reservationId, createAt: $createAt, status: $status, paymentType: $paymentType, orderType: $orderType, mealTypeModel: $mealTypeModel, usedAt: $usedAt, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
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
            const DeepCollectionEquality()
                .equals(other.mealTypeModel, mealTypeModel) &&
            const DeepCollectionEquality().equals(other.usedAt, usedAt) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
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
      const DeepCollectionEquality().hash(mealTypeModel),
      const DeepCollectionEquality().hash(usedAt),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel(
      {final String? id,
      final String? bedName,
      final int? bedId,
      final int? patientId,
      final String? patientFullname,
      final String? receptionQueueId,
      final int? roomId,
      final String? roomName,
      final int? reservationId,
      final int? createAt,
      final String? status,
      final String? paymentType,
      final String? orderType,
      final MealTypeModel? mealTypeModel,
      final int? usedAt,
      final List<ProductModel>? products}) = _$_OrderModel;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get bedName => throw _privateConstructorUsedError;
  @override
  int? get bedId => throw _privateConstructorUsedError;
  @override
  int? get patientId => throw _privateConstructorUsedError;
  @override
  String? get patientFullname => throw _privateConstructorUsedError;
  @override
  String? get receptionQueueId => throw _privateConstructorUsedError;
  @override
  int? get roomId => throw _privateConstructorUsedError;
  @override
  String? get roomName => throw _privateConstructorUsedError;
  @override
  int? get reservationId => throw _privateConstructorUsedError;
  @override
  int? get createAt => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get paymentType => throw _privateConstructorUsedError;
  @override
  String? get orderType => throw _privateConstructorUsedError;
  @override
  MealTypeModel? get mealTypeModel => throw _privateConstructorUsedError;
  @override
  int? get usedAt => throw _privateConstructorUsedError;
  @override
  List<ProductModel>? get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
