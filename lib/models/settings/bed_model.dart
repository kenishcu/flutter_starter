import 'package:freezed_annotation/freezed_annotation.dart';

part 'bed_model.freezed.dart';
part 'bed_model.g.dart';

@freezed
class BedModel with _$BedModel {

  const BedModel._();

  factory BedModel({
    int? bedId,
    String? bedName,
  }) = _BedModel;

  factory BedModel.fromJson(Map<String, dynamic> json) => _$BedModelFromJson(json);
}

