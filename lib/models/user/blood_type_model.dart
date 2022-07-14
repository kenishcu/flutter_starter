import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_type_model.freezed.dart';
part 'blood_type_model.g.dart';

@freezed
class BloodTypeModel  with _$BloodTypeModel  {

  const BloodTypeModel._();

  factory BloodTypeModel({
    String? id,
    String? name,
  }) = _BloodTypeModel;

  factory BloodTypeModel.fromJson(Map<String, dynamic> json) => _$BloodTypeModelFromJson(json);
}