import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:itrapp/lang/lang_category_model.dart';

part 'sub_category_model.freezed.dart';
part 'sub_category_model.g.dart';

@freezed
class SubCategoryModel with _$SubCategoryModel {

  const SubCategoryModel._();

  factory SubCategoryModel({
    String? categoryId,
    String? categoryCode,
    String? categoryName,
    LangCategoryModel? lang,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);
}