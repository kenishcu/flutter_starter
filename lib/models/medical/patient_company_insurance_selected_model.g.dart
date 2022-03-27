// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_company_insurance_selected_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientCompanyInsuranceSelectedModel
    _$$_PatientCompanyInsuranceSelectedModelFromJson(
            Map<String, dynamic> json) =>
        _$_PatientCompanyInsuranceSelectedModel(
          insuranceCategory: json['insuranceCategory'] as String?,
          insuranceCode: json['insuranceCode'] as String?,
          insuranceName: json['insuranceName'] as String?,
          insuranceId: json['insuranceId'] as int?,
          guarantorCode: json['guarantorCode'] as String?,
          guarantorName: json['guarantorName'] as String?,
          insuranceNumber: json['insuranceNumber'] as String?,
          insuranceType: json['insuranceType'] as String?,
          insuranceNote: json['insuranceNote'] as String?,
          from: json['from'] as String?,
          until: json['until'] as String?,
        );

Map<String, dynamic> _$$_PatientCompanyInsuranceSelectedModelToJson(
        _$_PatientCompanyInsuranceSelectedModel instance) =>
    <String, dynamic>{
      'insuranceCategory': instance.insuranceCategory,
      'insuranceCode': instance.insuranceCode,
      'insuranceName': instance.insuranceName,
      'insuranceId': instance.insuranceId,
      'guarantorCode': instance.guarantorCode,
      'guarantorName': instance.guarantorName,
      'insuranceNumber': instance.insuranceNumber,
      'insuranceType': instance.insuranceType,
      'insuranceNote': instance.insuranceNote,
      'from': instance.from,
      'until': instance.until,
    };
