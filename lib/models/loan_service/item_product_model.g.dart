// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemProductModel _$$_ItemProductModelFromJson(Map<String, dynamic> json) =>
    _$_ItemProductModel(
      product: json['product'] == null
          ? null
          : LoanServiceModel.fromJson(json['product'] as Map<String, dynamic>),
      edit: json['edit'] as String?,
      number: json['number'] as int?,
    );

Map<String, dynamic> _$$_ItemProductModelToJson(_$_ItemProductModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'edit': instance.edit,
      'number': instance.number,
    };
