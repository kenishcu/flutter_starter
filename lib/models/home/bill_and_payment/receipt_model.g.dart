// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptModel _$$_ReceiptModelFromJson(Map<String, dynamic> json) =>
    _$_ReceiptModel(
      branchId: json['branch_id'] as int?,
      branchName: json['branch_name'] as String?,
      patientId: json['patient_id'] as int?,
      receptionQueueId: json['reception_queue_id'] as String?,
      patientFullname: json['patient_fullname'] as String?,
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      finalPrice: (json['final_price'] as num?)?.toDouble(),
      receiptId: json['receipt_id'] as String?,
      paymentStatus: json['payment_status'] as int?,
      receiptIndex: json['receipt_index'] as int?,
      receipts: (json['receipts'] as List<dynamic>?)
          ?.map((e) => ReceiptServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReceiptModelToJson(_$_ReceiptModel instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'patient_id': instance.patientId,
      'reception_queue_id': instance.receptionQueueId,
      'patient_fullname': instance.patientFullname,
      'total_price': instance.totalPrice,
      'final_price': instance.finalPrice,
      'receipt_id': instance.receiptId,
      'payment_status': instance.paymentStatus,
      'receipt_index': instance.receiptIndex,
      'receipts': instance.receipts,
    };
