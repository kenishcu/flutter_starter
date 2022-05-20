import 'package:freezed_annotation/freezed_annotation.dart';
import 'loan_service_model.dart';

part 'item_product_model.freezed.dart';
part 'item_product_model.g.dart';

@freezed
class ItemProductModel with _$ItemProductModel {

  const ItemProductModel._();

  factory ItemProductModel({
    LoanServiceModel? product,
    String? edit,
    int? number,
  }) = _ItemProductModel;

  factory ItemProductModel.fromJson(Map<String, dynamic> json) => _$ItemProductModelFromJson(json);
}