import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itrapp/lang/lang_category_model.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  factory CategoryModel({
    String? categoryId,
    String? categoryCode,
    String? categoryName,
    LangCategoryModel? lang,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
