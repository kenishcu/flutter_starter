import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_content_model.freezed.dart';
part 'notification_content_model.g.dart';

@freezed
class NotificationContentModel with _$NotificationContentModel {

  const NotificationContentModel._();

  factory NotificationContentModel({
    String? form,
    String? reservation,
  }) = _NotificationContentModel;

  factory NotificationContentModel.fromJson(Map<String, dynamic> json) => _$NotificationContentModelFromJson(json);
}