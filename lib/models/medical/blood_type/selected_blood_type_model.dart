import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_blood_type_model.freezed.dart';
part 'selected_blood_type_model.g.dart';

@freezed
class SelectedBloodTypeModel with _$SelectedBloodTypeModel {

  const SelectedBloodTypeModel._();

  factory SelectedBloodTypeModel({
    int? id,
    String? name,
  }) = _SelectedBloodTypeModel;

  factory SelectedBloodTypeModel.fromJson(Map<String, dynamic> json) => _$SelectedBloodTypeModelFromJson(json);

}