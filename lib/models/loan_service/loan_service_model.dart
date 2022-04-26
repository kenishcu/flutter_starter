import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_service_model.freezed.dart';
part 'loan_service_model.g.dart';

@freezed
class LoanServiceModel with _$LoanServiceModel {

  const LoanServiceModel._();

  factory LoanServiceModel({
    String? id,
    String? serviceCode,
    String? serviceName,
    String? categoryId,
    String? categoryCode,
    String? categoryName,
    String? note,
    String? imageUrl,
    int? defaultQuantity,
    int? quantity,
    int? price,
    int? status,
  }) = _LoanServiceModel;

  factory LoanServiceModel.fromJson(Map<String, dynamic> json) => _$LoanServiceModelFromJson(json);
}