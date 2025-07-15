// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationMessageModel _$NotificationMessageModelFromJson(
  Map<String, dynamic> json,
) => _NotificationMessageModel(
  title: json['title'] as String,
  body: json['body'] as String,
  token: json['token'] as String?,
  imageUrl: json['imageUrl'] as String?,
  topic: json['topic'] as String?,
);

Map<String, dynamic> _$NotificationMessageModelToJson(
  _NotificationMessageModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'body': instance.body,
  'token': instance.token,
  'imageUrl': instance.imageUrl,
  'topic': instance.topic,
};
