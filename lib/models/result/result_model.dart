import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@freezed
class ResultModel with _$ResultModel {

  const ResultModel._();

  factory ResultModel({
    dynamic results,
    dynamic error,
    bool? status,
    String? appVersion,

  }) = _ResultModel;

  factory ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);
}

