import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

class ContactModel with _$ContactModel {

  const ContactModel._();

  factory ContactModel({
    String? id,
    String? hotLineName,
    int? hotLineNumber,
    int? parentId,
    String? parentName,
    int? status
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) => _$ContactModelFromJson(json);
}

