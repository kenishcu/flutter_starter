// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillModel _$$_BillModelFromJson(Map<String, dynamic> json) => _$_BillModel(
      branchId: json['branch_id'] as int?,
      branchName: json['branch_name'] as String?,
      patientId: json['patient_id'] as int?,
      receptionQueueId: json['reception_queue_id'] as String?,
      patientFullname: json['patient_fullname'] as String?,
      finalPrice: json['final_price'] as int?,
      receiptId: json['receipt_id'] as String?,
      receipts: (json['receipts'] as List<dynamic>?)
          ?.map((e) => ReceiptModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BillModelToJson(_$_BillModel instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'patient_id': instance.patientId,
      'reception_queue_id': instance.receptionQueueId,
      'patient_fullname': instance.patientFullname,
      'final_price': instance.finalPrice,
      'receipt_id': instance.receiptId,
      'receipts': instance.receipts,
    };
