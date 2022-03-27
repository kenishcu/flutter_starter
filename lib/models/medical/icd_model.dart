import 'package:freezed_annotation/freezed_annotation.dart';

part 'icd_model.freezed.dart';
part 'icd_model.g.dart';

@freezed
class IcdModel extends _$IcdModel {

  const IcdModel._();

  factory IcdModel({
    int? serviceId,
    String? serviceCode,
    String? serviceName,
  }) = _IcdModel;

  factory IcdModel.fromJson(Map<String, dynamic> json) => _$IcdModelFromJson(json);

}