// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillModel _$$_BillModelFromJson(Map<String, dynamic> json) => _$_BillModel(
      id: json['_id'] as String?,
      receiptIndex: json['receipt_index'] as int?,
      branchId: json['branch_id'] as int?,
      branchName: json['branch_name'] as String?,
      patientId: json['patient_id'] as int?,
      receptionQueueId: json['reception_queue_id'] as String?,
      patientFullname: json['patient_fullname'] as String?,
      finalPrice: json['final_price'] as int?,
      receiptId: json['receipt_id'] as String?,
      paymentStatus: json['payment_status'] as int?,
    );

Map<String, dynamic> _$$_BillModelToJson(_$_BillModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'receipt_index': instance.receiptIndex,
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'patient_id': instance.patientId,
      'reception_queue_id': instance.receptionQueueId,
      'patient_fullname': instance.patientFullname,
      'final_price': instance.finalPrice,
      'receipt_id': instance.receiptId,
      'payment_status': instance.paymentStatus,
    };
