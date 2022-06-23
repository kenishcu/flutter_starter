// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptModel _$$_ReceiptModelFromJson(Map<String, dynamic> json) =>
    _$_ReceiptModel(
      id: json['_id'] as int?,
      serviceId: json['service_id'] as int?,
      serviceName: json['service_name'] as String?,
      quantity: json['quantity'] as int?,
      servicePrice: json['service_price'] as int?,
      finalPrice: json['final_price'] as int?,
      reductionPrice: json['reduction_price'] as int?,
      healthInsuranceServicePrice: json['health_insurance_service_price'] as int?,
      companyInsurancePrice: json['company_insurance_price'] as int?,
      serviceCategoryId: json['service_category_id'] as int?,
      serviceCategoryName: json['service_category_name'] as String?,
    );

Map<String, dynamic> _$$_ReceiptModelToJson(_$_ReceiptModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'service_id': instance.serviceId,
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
