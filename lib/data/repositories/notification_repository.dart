import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationRepository {
  NotificationRepository()
    : notificationsPlugin = FlutterLocalNotificationsPlugin() {
    var initializationConfig = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    notificationsPlugin.initialize(initializationConfig);
  }

  final FlutterLocalNotificationsPlugin notificationsPlugin;

  void notifyEvent() {
    const title = "Test notification";
    const body = "This is the body of a test notification";

    notificationsPlugin.show(1, title, body, NotificationDetails());
  }
}
