import 'package:freezed_annotation/freezed_annotation.dart';

part 'itrmin_setting_model.freezed.dart';
part 'itrmin_setting_model.g.dart';

@freezed
class ItrminSettingModel with _$ItrminSettingModel {

  const ItrminSettingModel._();

  factory ItrminSettingModel({
    int? id,
    String? appName,
    String? slogan,
    String? logoUrl,
    String? hotLine,
    String? videoUrl,
    String? videoAppUrl,
    String? domainFileServer,
    String? domainApi,
    int? sleepTime,
  }) = _ItrminSettingModel;

  factory ItrminSettingModel.fromJson(Map<String, dynamic> json) =>
      _$ItrminSettingModelFromJson(json);
}