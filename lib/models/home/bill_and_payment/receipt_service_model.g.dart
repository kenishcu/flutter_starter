// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptServiceModel _$$_ReceiptServiceModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReceiptServiceModel(
      serviceId: json['service_id'] as int?,
      serviceName: json['service_name'] as String?,
      quantity: json['quantity'] as int?,
      servicePrice: (json['service_price'] as num?)?.toDouble(),
      finalPrice: (json['final_price'] as num?)?.toDouble(),
      reductionPrice: (json['reduction_price'] as num?)?.toDouble(),
      healthInsuranceServicePrice:
          (json['health_insurance_service_price'] as num?)?.toDouble(),
      companyInsurancePrice:
          (json['company_insurance_price'] as num?)?.toDouble(),
      serviceCategoryId: json['service_category_id'] as int?,
      serviceCategoryName: json['service_category_name'] as String?,
    );

Map<String, dynamic> _$$_ReceiptServiceModelToJson(
        _$_ReceiptServiceModel instance) =>
    <String, dynamic>{
      'service_name': instance.serviceName,
      'quantity': instance.quantity,
      'service_price': instance.servicePrice,
      'final_price': instance.finalPrice,
      'reduction_price': instance.reductionPrice,
      'health_insurance_service_price': instance.healthInsuranceServicePrice,
      'company_insurance_price': instance.companyInsurancePrice,
      'service_category_id': instance.serviceCategoryId,
      'service_category_name': instance.serviceCategoryName,
    };
