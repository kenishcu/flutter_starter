import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {

  const MenuModel._();

  factory MenuModel({
    String? id,
    String? menuCalendarDailyCode,
    String? menuCalendarDailyName,
    String? orderType,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) => _$MenuModelFromJson(json);
}