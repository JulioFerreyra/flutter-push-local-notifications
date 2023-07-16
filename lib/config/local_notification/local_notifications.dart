import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifications {
  static Future<void> requestPermissionsLocalNotifications() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();
  }

  static Future<void> initializeLocalNotifications() async {
    const initializationSettingAndroid =
        AndroidInitializationSettings("app_icon");
    //TODO iOS configuration
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingAndroid);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }
}
