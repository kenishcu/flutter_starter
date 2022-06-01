import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_data_model.freezed.dart';
part 'service_data_model.g.dart';

@freezed
class ServiceDataModel  with _$ServiceDataModel {
  const ServiceDataModel._();

  factory ServiceDataModel({
    String? serviceCode,
    int? serviceId,
    String? serviceName,
  }) = _ServiceDataModel;

  factory ServiceDataModel.fromJson(Map<String, dynamic> json) => _$ServiceDataModelFromJson(json);

}