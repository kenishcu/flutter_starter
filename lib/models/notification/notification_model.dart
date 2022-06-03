import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_content_model.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {

  const NotificationModel._();

  factory NotificationModel({
    String? id,
    String? title,
    String? body,
    String? bedName,
    bool? read,
    bool? notified,
    NotificationContentModel? data,
    int? createdAt,
    int? updatedAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);
}