import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';

enum NotificationAuthorizationStatus {
  authorized,
  denied,
  notDetermined,
  provisional,
}

abstract class BaseNotificationProvider {
  BaseNotificationProvider(this.box, this.localNotificationsPlugin);

  final Box<String> box;
  final FlutterLocalNotificationsPlugin localNotificationsPlugin;

  Future<String?> notificationToken();

  Future<NotificationAuthorizationStatus> getNotificationPermisions();

  Future<NotificationAuthorizationStatus> requestNotificationPermissions();

  Future<void> subscribeToTopic(String topic);

  Future<void> unsubscribeFromTopic(String topic);

  Future<void> setupAnalytics();

  List<String> getStoredNotifications() {
    return box.values.toList();
  }

  Future<void> createNotificationChannels() async {
    const dessertsGroupId = 'desserts_group';
    const notificationChannelGroup = AndroidNotificationChannelGroup(dessertsGroupId, 'Desserts');
    final androidPlugin = localNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (androidPlugin == null) {
      return;
    }
    await androidPlugin.createNotificationChannelGroup(notificationChannelGroup);
    const iceCreamChannel = AndroidNotificationChannel(
      'ice_cream_channel',
      'Ice CreamNotifications',
      description: 'This channel is used for ice cream notifications',
      importance: Importance.high,
      groupId: dessertsGroupId,
    );
    const cookiesChannel = AndroidNotificationChannel(
      'cookies_channel',
      'Cookies Notifications',
      description: 'This channel is used for cookies notifications',
      importance: Importance.high,
      groupId: dessertsGroupId,
    );
    const waterChannel = AndroidNotificationChannel(
      'water_channel',
      'Water Notifications',
      description: 'This channel is used for water notifications',
      importance: Importance.high,
    );
    await androidPlugin.createNotificationChannel(iceCreamChannel);
    await androidPlugin.createNotificationChannel(cookiesChannel);
    await androidPlugin.createNotificationChannel(waterChannel);
  }

  Stream<String?> onAppOpenMessage();
}
