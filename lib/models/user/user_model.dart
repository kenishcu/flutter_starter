import 'package:itrapp/models/medical/icd_model.dart';
import 'package:itrapp/models/medical/level_care_model.dart';
import 'package:itrapp/models/medical/patient_company_insurance_selected_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'blood_type_model.dart';
import 'vitality_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {

  const UserModel._();

  factory UserModel({
    int? patientId,
    String? patientName,
    int? birthDay,
    int? sex,
    String? examiningByFullname,
    String? examiningBy,
    int? examiningById,
    String? nurseByFullname,
    String? nurseBy,
    int? nurseById,
    List<String>? allergyFood,
    String? examiningDiagnosis,
    List<IcdModel>? icds,
    LevelCareModel? levelCare,
    String? note,
    String? phoneNumber,
    String? countryName,
    String? provinceName,
    String? districtName,
    String? familyContact,
    String? phoneContact,
    String? attention,
    String? receptionQueueId,
    int? totalFinalPrice,
    int? totalDepositPrice,
    int? totalReturnPrice,
    BloodTypeModel? bloodTypes,
    VitalityModel? vitality,
    String? identityId,
    String? passportId,
    String? ethnicName,
    String? address1,
    PatientCompanyInsuranceSelectedModel? patientCompanyInsuranceSelected,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}