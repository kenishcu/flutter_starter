// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_company_insurance_selected_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientCompanyInsuranceSelectedModel
    _$$_PatientCompanyInsuranceSelectedModelFromJson(
            Map<String, dynamic> json) =>
        _$_PatientCompanyInsuranceSelectedModel(
          insuranceCategory: json['insurance_category'] as String?,
          insuranceCode: json['insurance_code'] as String?,
          insuranceName: json['insurance_name'] as String?,
          insuranceId: json['insurance_id'] as int?,
          guarantorCode: json['guarantor_code'] as String?,
          guarantorName: json['guarantor_bame'] as String?,
          insuranceNumber: json['insurance_number'] as String?,
          insuranceType: json['insurance_type'] as String?,
          insuranceNote: json['insurance_note'] as String?,
          from: json['from'] as String?,
          until: json['until'] as String?,
        );

Map<String, dynamic> _$$_PatientCompanyInsuranceSelectedModelToJson(
        _$_PatientCompanyInsuranceSelectedModel instance) =>
    <String, dynamic>{
      'insurance_category': instance.insuranceCategory,
      'insurance_code': instance.insuranceCode,
      'insurance_name': instance.insuranceName,
      'insurance_id': instance.insuranceId,
      'guarantor_code': instance.guarantorCode,
      'guarantor_name': instance.guarantorName,
      'insurance_number': instance.insuranceNumber,
      'insurance_type': instance.insuranceType,
      'insurance_note': instance.insuranceNote,
      'from': instance.from,
      'until': instance.until,
    };
