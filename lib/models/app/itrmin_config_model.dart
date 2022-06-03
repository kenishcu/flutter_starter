import 'package:freezed_annotation/freezed_annotation.dart';

part 'itrmin_config_model.freezed.dart';
part 'itrmin_config_model.g.dart';

@freezed
class ItrminConfigModel with _$ItrminConfigModel {

  const ItrminConfigModel._();

  factory ItrminConfigModel({
    String? id,
    String? appName,
    String? slogan,
    String? logoUrl,
    String? hotline,
    String? videoUrl,
    String? videoAppUrl,
    String? domainFileServer,
    String? domainApi,
    int? sleepTime,
    String? lockOrder,
  }) = _ItrminConfigModel;

  factory ItrminConfigModel.fromJson(Map<String, dynamic> json) => _$ItrminConfigModelFromJson(json);
}
