import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_app_model.freezed.dart';
part 'sub_app_model.g.dart';

@freezed
class SubAppModel {

  const SubAppModel._();

  factory SubAppModel({
    int? id,
    String? categoryCode,
    int? categoryName,
    String? thumbnailUrl,
    int? status,
  }) = _SubAppModel;

  factory SubAppModel.fromJson(Map<String, dynamic> json) =>
      _$SubAppModelFromJson(json);
}