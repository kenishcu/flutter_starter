import 'package:itrapp/models/medical/blood_type/selected_blood_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_type_model.freezed.dart';
part 'blood_type_model.g.dart';

@freezed
class BloodTypeModel with _$BloodTypeModel {

  const BloodTypeModel._();

  factory BloodTypeModel({
    SelectedBloodTypeModel? bloodType,
  }) = _BloodTypeModel;

  factory BloodTypeModel.fromJson(Map<String, dynamic> json) => _$BloodTypeModelFromJson(json);

}