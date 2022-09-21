import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {

  const ProductModel._();

  factory ProductModel({
    String? id,
    String? productCode,
    String? productName,
    String? categoryDailyParentId,
    String? categoryDailyParentCode,
    String? categoryDailyParentName,
    String? categoryDailyId,
    String? categoryDailyCode,
    String? categoryDailyName,
    String? categoryParentId,
    String? categoryParentCode,
    String? categoryParentName,
    String? categoryId,
    String? categoryCode,
    String? categoryName,
    String? status,
    int? price,
    int? quantity,
    int? discount,
    int? discountRate,
    String? note,
    String? imageUrl,
    Map<dynamic,dynamic>? lang,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}