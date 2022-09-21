// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoanServiceModel _$$_LoanServiceModelFromJson(Map<String, dynamic> json) =>
    _$_LoanServiceModel(
      id: json['_id'] as String?,
      serviceCode: json['service_code'] as String?,
      serviceName: json['service_name'] as String?,
      categoryId: json['category_id'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      note: json['note'] as String?,
      imageUrl: json['image_url'] as String?,
      defaultQuantity: json['default_quantity'] as int?,
      quantity: json['quantity'] as int?,
      price: json['price'] as int?,
      status: json['status'] as int?,
      lang: json['lang'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_LoanServiceModelToJson(_$_LoanServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'service_code': instance.serviceCode,
      'service_name': instance.serviceName,
      'category_id': instance.categoryId,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'note': instance.note,
      'image_url': instance.imageUrl,
      'default_quantity': instance.defaultQuantity,
      'quantity': instance.quantity,
      'price': instance.price,
      'status': instance.status,
      'lang': instance.lang,
    };
