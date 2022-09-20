import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang_category_model.freezed.dart';
part 'lang_category_model.g.dart';

@freezed
class LangCategoryModel with _$LangCategoryModel {

  const LangCategoryModel._();

  factory LangCategoryModel({
    String? categoryNameVI,
    String? categoryNameEN,
  }) = _LangCategoryModel;

  factory LangCategoryModel.fromJson(Map<String, dynamic> json) => _$LangCategoryModelFromJson(json);
}