import 'package:freezed_annotation/freezed_annotation.dart';

import 'meal_type_model.dart';
import 'product_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {

  const OrderModel._();

  factory OrderModel({
    String? id,
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
    List<ProductModel>? products
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}