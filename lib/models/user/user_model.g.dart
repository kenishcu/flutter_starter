// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      patientId: json['patient_id'] as int?,
      patientName: json['patient_fullname'] as String?,
      birthDay: json['birth_day'] as int?,
      sex: json['sex'] as int?,
      examiningByFullname: json['examining_by_fullname'] as String?,
      examiningBy: json['examining_by'] as String?,
      examiningById: json['examining_by_id'] as int?,
      nurseByFullname: json['nurse_by_fullname'] as String?,
      nurseBy: json['nurse_by'] as String?,
      nurseById: json['nurse_by_id'] as int?,
      allergyFood: (json['allergy_foods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      examiningDiagnosis: json['examining_diagnosis'] as String?,
      icds: (json['examining_service_icd'] as List<dynamic>?)
          ?.map((e) => IcdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      levelCare: json['level_care'] == null
          ? null
          : LevelCareModel.fromJson(json['level_care'] as Map<String, dynamic>),
      note: json['note'] as String?,
      phoneNumber: json['phone_number'] as String?,
      countryName: json['country_name'] as String?,
      provinceName: json['province_name'] as String?,
      districtName: json['district_name'] as String?,
      familyContact: json['family_contact'] as String?,
      phoneContact: json['phone_contact'] as String?,
      attention: json['attention'] as String?,
      receptionQueueId: json['reception_queue_id'] as String?,
      totalFinalPrice: json['total_final_price'] as int?,
      totalDepositPrice: json['total_deposit_price'] as int?,
      totalReturnPrice: json['total_return_price'] as int?,
      bloodTypes: json['blood_types'] == null
          ? null
          : BloodTypeModel.fromJson(json['blood_types'] as Map<String, dynamic>),
      vitality: json['vitality'] == null
          ? null
          : VitalityModel.fromJson(json['vitality'] as Map<String, dynamic>),
      identityId: json['identity_id'] as String?,
      passportId: json['passport_id'] as String?,
      ethnicName: json['ethnic_name'] as String?,
      address1: json['address1'] as String?,
      patientCompanyInsuranceSelected:
          json['patient_company_insurance_selected'] == null
              ? null
              : PatientCompanyInsuranceSelectedModel.fromJson(
                  json['patient_company_insurance_selected']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'patient_id': instance.patientId,
      'patient_name': instance.patientName,
      'birth_day': instance.birthDay,
      'sex': instance.sex,
      'examining_by_fullname': instance.examiningByFullname,
      'examining_by': instance.examiningBy,
      'examining_by_id': instance.examiningById,
      'nurse_by_fullname': instance.nurseByFullname,
      'nurse_by': instance.nurseBy,
      'nurse_by_id': instance.nurseById,
      'allergy_food': instance.allergyFood,
      'examining_diagnosis': instance.examiningDiagnosis,
      'icds': instance.icds,
      'level_care': instance.levelCare,
      'note': instance.note,
      'phone_bumber': instance.phoneNumber,
      'country_name': instance.countryName,
      'province_name': instance.provinceName,
      'district_name': instance.districtName,
      'family_contact': instance.familyContact,
      'phone_contact': instance.phoneContact,
      'attention': instance.attention,
      'reception_queue_id': instance.receptionQueueId,
      'total_final_price': instance.totalFinalPrice,
      'total_deposit_price': instance.totalDepositPrice,
      'total_return_price': instance.totalReturnPrice,
      'blood_types': instance.bloodTypes,
      'vitality': instance.vitality,
      'identity_id': instance.identityId,
      'passport_id': instance.passportId,
      'ethnic_name': instance.ethnicName,
      'address1': instance.address1,
      'patient_company_insurance_selected':
          instance.patientCompanyInsuranceSelected,
    };
