import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_id_model.freezed.dart';
part 'service_id_model.g.dart';

@freezed
class ServiceIdModel with _$ServiceIdModel {
  const ServiceIdModel._();

  factory ServiceIdModel({
    int? currentDayTime,
    int? inPatient,
    String? receptionQueueId,
    int? serviceCategoryId,
    String? serviceCategoryName,
    int? serviceCategoryParentId,
    String? serviceCategoryParentName
  }) = _ServiceIdModel;

  factory ServiceIdModel.fromJson(Map<String, dynamic> json) => _$ServiceIdModelFromJson(json);

}