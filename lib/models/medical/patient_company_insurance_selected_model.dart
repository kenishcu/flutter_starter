import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_company_insurance_selected_model.freezed.dart';
part 'patient_company_insurance_selected_model.g.dart';

@freezed
class PatientCompanyInsuranceSelectedModel extends _$PatientCompanyInsuranceSelectedModel {

  const PatientCompanyInsuranceSelectedModel._();

  factory PatientCompanyInsuranceSelectedModel({
    String? insuranceCategory,
    String? insuranceCode,
    String? insuranceName,
    int? insuranceId,
    String? guarantorCode,
    String? guarantorName,
    String? insuranceNumber,
    String? insuranceType,
    String? insuranceNote,
    String? from,
    String? until,
  }) = _PatientCompanyInsuranceSelectedModel;

  factory PatientCompanyInsuranceSelectedModel.fromJson(Map<String, dynamic> json) => _$PatientCompanyInsuranceSelectedModelFromJson(json);

}