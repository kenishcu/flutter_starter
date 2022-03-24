import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel {

  const UserModel._();

  factory UserModel({
    int? id,
    String? appName,
    int? slogan,
    String? logoUrl,
    int? hotLine,
    String? videoUrl,
    String? videoAppUrl,
    String? domainFileServer,
    String? domainApi,
  }) = _UserModel;

  factory UserModelModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}