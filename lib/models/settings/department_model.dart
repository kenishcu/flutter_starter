import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

class DepartmentModel with _$DepartmentModel{

  const DepartmentModel._();

  factory DepartmentModel({
    int? roomId,
    String? roomName,
    int? roomTypeId,
    String? roomCode,
    int? parentId,
    String? parentName,
    int? branchId,
    int? companyId,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) => _$DepartmentModelFromJson(json);
}
