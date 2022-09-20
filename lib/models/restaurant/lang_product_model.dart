import 'package:freezed_annotation/freezed_annotation.dart';

part 'lang_product_model.freezed.dart';
part 'lang_product_model.g.dart';

@freezed
class LangProductModel with _$LangProductModel {

  const LangProductModel._();

  factory LangProductModel({
    String? productNameVI,
    String? productNameEN,
  }) = _LangProductModel;

  factory LangProductModel.fromJson(Map<String, dynamic> json) => _$LangProductModelFromJson(json);
}