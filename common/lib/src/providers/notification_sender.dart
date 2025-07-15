import 'package:common/src/models/notification/notification.dart';

abstract class BaseNotificationSenderProvider {
  BaseNotificationSenderProvider();

  Future<void> sendNotification(NotificationMessageModel notification);
}
