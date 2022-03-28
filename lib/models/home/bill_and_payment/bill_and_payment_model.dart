import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_and_payment_model.freezed.dart';
part 'bill_and_payment_model.g.dart';

@freezed
class BillAndPaymentModel with _$BillAndPaymentModel{

  const BillAndPaymentModel._();

  factory BillAndPaymentModel({
    int? serviceId,
    String? serviceName,
    int? quantity,
    int? servicePrice,
    int? finalPrice,
    int? usedAt,
  }) = _BillAndPaymentModel;

  factory BillAndPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$BillAndPaymentModelFromJson(json);
}