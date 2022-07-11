import 'package:itrapp/models/food_treatment/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_product_model.freezed.dart';
part 'item_product_model.g.dart';

@freezed
class ItemProductModel with _$ItemProductModel {

  const ItemProductModel._();

  factory ItemProductModel({
    ProductModel? product,
    String? edit,
    int? number,
  }) = _ItemProductModel;

  factory ItemProductModel.fromJson(Map<String, dynamic> json) => _$ItemProductModelFromJson(json);
}