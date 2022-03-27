// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      patientId: json['patientId'] as int?,
      patientName: json['patientName'] as String?,
      birthDay: json['birthDay'] as int?,
      sex: json['sex'] as int?,
      examiningByFullname: json['examiningByFullname'] as String?,
      examiningBy: json['examiningBy'] as String?,
      examiningById: json['examiningById'] as int?,
      nurseByFullname: json['nurseByFullname'] as String?,
      nurseBy: json['nurseBy'] as String?,
      nurseById: json['nurseById'] as int?,
      allergyFood: (json['allergyFood'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      examiningDiagnosis: json['examiningDiagnosis'] as String?,
      icds: (json['icds'] as List<dynamic>?)
          ?.map((e) => IcdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      levelCare: json['levelCare'] == null
          ? null
          : LevelCareModel.fromJson(json['levelCare'] as Map<String, dynamic>),
      note: json['note'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      countryName: json['countryName'] as String?,
      provinceName: json['provinceName'] as String?,
      districtName: json['districtName'] as String?,
      familyContact: json['familyContact'] as String?,
      phoneContact: json['phoneContact'] as String?,
      attention: json['attention'] as String?,
      receptionQueueId: json['receptionQueueId'] as String?,
      totalFinalPrice: json['totalFinalPrice'] as int?,
      totalDepositPrice: json['totalDepositPrice'] as int?,
      totalReturnPrice: json['totalReturnPrice'] as int?,
      bloodTypes: json['bloodTypes'] as String?,
      vitality: json['vitality'] as String?,
      identityId: json['identityId'] as String?,
      passportId: json['passportId'] as String?,
      ethnicName: json['ethnicName'] as String?,
      address1: json['address1'] as String?,
      patientCompanyInsuranceSelected:
          json['patientCompanyInsuranceSelected'] == null
              ? null
              : PatientCompanyInsuranceSelectedModel.fromJson(
                  json['patientCompanyInsuranceSelected']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'patientName': instance.patientName,
      'birthDay': instance.birthDay,
      'sex': instance.sex,
      'examiningByFullname': instance.examiningByFullname,
      'examiningBy': instance.examiningBy,
      'examiningById': instance.examiningById,
      'nurseByFullname': instance.nurseByFullname,
      'nurseBy': instance.nurseBy,
      'nurseById': instance.nurseById,
      'allergyFood': instance.allergyFood,
      'examiningDiagnosis': instance.examiningDiagnosis,
      'icds': instance.icds,
      'levelCare': instance.levelCare,
      'note': instance.note,
      'phoneNumber': instance.phoneNumber,
      'countryName': instance.countryName,
      'provinceName': instance.provinceName,
      'districtName': instance.districtName,
      'familyContact': instance.familyContact,
      'phoneContact': instance.phoneContact,
      'attention': instance.attention,
      'receptionQueueId': instance.receptionQueueId,
      'totalFinalPrice': instance.totalFinalPrice,
      'totalDepositPrice': instance.totalDepositPrice,
      'totalReturnPrice': instance.totalReturnPrice,
      'bloodTypes': instance.bloodTypes,
      'vitality': instance.vitality,
      'identityId': instance.identityId,
      'passportId': instance.passportId,
      'ethnicName': instance.ethnicName,
      'address1': instance.address1,
      'patientCompanyInsuranceSelected':
          instance.patientCompanyInsuranceSelected,
    };
