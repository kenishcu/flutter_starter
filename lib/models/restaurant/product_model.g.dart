// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['_id'] as String?,
      productCode: json['product_code'] as String?,
      productName: json['product_name'] as String?,
      categoryDailyParentId: json['category_daily_parent_id'] as String?,
      categoryDailyParentCode: json['category_daily_parent_code'] as String?,
      categoryDailyParentName: json['category_daily_parent_name'] as String?,
      categoryDailyId: json['category_daily_id'] as String?,
      categoryDailyCode: json['category_daily_code'] as String?,
      categoryDailyName: json['category_daily_name'] as String?,
      categoryParentId: json['category_parent_id'] as String?,
      categoryParentCode: json['category_parent_code'] as String?,
      categoryParentName: json['category_parent_name'] as String?,
      categoryId: json['category_id'] as String?,
      categoryCode: json['category_code'] as String?,
      categoryName: json['category_name'] as String?,
      status: json['status'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      discount: json['discount'] as int?,
      discountRate: json['discount_rate'] as int?,
      note: json['note'] as String?,
      imageUrl: json['image_url'] as String?,
      lang: json['lang'] == null
          ? null
          : LangProductModel.fromJson(json['lang'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'category_daily_parent_id': instance.categoryDailyParentId,
      'category_daily_parent_code': instance.categoryDailyParentCode,
      'category_daily_parent_name': instance.categoryDailyParentName,
      'category_daily_id': instance.categoryDailyId,
      'category_daily_code': instance.categoryDailyCode,
      'category_daily_name': instance.categoryDailyName,
      'category_parent_id': instance.categoryParentId,
      'category_parent_code': instance.categoryParentCode,
      'category_parent_name': instance.categoryParentName,
      'category_id': instance.categoryId,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'status': instance.status,
      'price': instance.price,
      'quantity': instance.quantity,
      'discount': instance.discount,
      'discount_rate': instance.discountRate,
      'note': instance.note,
      'image_url': instance.imageUrl,
      'lang': instance.lang,
    };
