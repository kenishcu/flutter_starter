import 'package:freezed_annotation/freezed_annotation.dart';

import 'contact_model.dart';

part 'setting_model.freezed.dart';
part 'setting_model.g.dart';

@freezed
class SettingModel with _$SettingModel {

  const SettingModel._();

  factory SettingModel({
    int? branchId,
    String? branchName,
    int? bedId,
    String? bedName,
    int? roomId,
    String? roomName,
    int? parentId,
    String? parentName,
    String? macAddress,
    String? ipAddress,
    String? deviceToken,
    String? hotLine,
    String? authToken,
    List<ContactModel>? contracts,
  }) = _SettingModel;

  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);
}