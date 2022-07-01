import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotifcationsApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
static Future _notificationDetails() async {
  return NotificationDetails(
    android: AndroidNotificationDetails(
        'dexterous.com.flutter.local_notifications', 'your channel name',
      channelDescription: 'channel desc',

      importance: Importance.max

    ),
    iOS: IOSNotificationDetails(),
  );
}
  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,


  }) async =>
      _notifications.show(
          id, title, body,
          await _notificationDetails(),
      payload: payload,);
}