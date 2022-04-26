import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@freezed
class BranchModel with _$BranchModel {

  const BranchModel._();

  factory BranchModel({
    String? branchId,
    String? branchCode,
    String? branchName,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);
}