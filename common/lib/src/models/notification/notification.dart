import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
sealed class NotificationMessageModel with _$NotificationMessageModel {
  const factory NotificationMessageModel({
    required String title,
    required String body,
    String? token,
    String? imageUrl,
    String? topic,
  }) = _NotificationMessageModel;

  factory NotificationMessageModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageModelFromJson(json);
}
