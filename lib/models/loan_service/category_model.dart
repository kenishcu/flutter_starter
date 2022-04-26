import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {

  const CategoryModel._();

  factory CategoryModel({
    String? id,
    String? categoryCode,
    String? categoryName,
    String? thumbnailUrl,
    int? status,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}