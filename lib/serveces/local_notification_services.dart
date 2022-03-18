import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:workmanager/workmanager.dart';
import 'package:zekr/serveces/services.dart';


FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

Future showNotification() async {
  int rndmIndex = Random().nextInt(Services().smallDo3a2.length - 1);

  AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    '$rndmIndex.0',
    'وَذَكِّرْ',
    'تطبيق اذكار وادعية وتلاوة وقراءة القرءان الكريم',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    enableVibration: true,
  );
  var iOSPlatformChannelSpecifics = IOSNotificationDetails(
    threadIdentifier: 'thread_id',
  );
  var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);

  await flutterLocalNotificationsPlugin!.show(rndmIndex, 'وَذَكِّر',
      Services().smallDo3a2[rndmIndex], platformChannelSpecifics,
      payload: "payload");

  /// periodically...but const id && const title,body
}
final onNotifications = BehaviorSubject<String>();

void callbackDispatcher() {
  // initial notifications
  var initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  var initializationSettingsIOS = IOSInitializationSettings();

  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );
  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  WidgetsFlutterBinding.ensureInitialized();

  flutterLocalNotificationsPlugin!.initialize(initializationSettings,
      onSelectNotification: (payload) async {
    onNotifications.add(payload!);
  });

  Workmanager().executeTask((task, inputData) {
    showNotification();
    return Future.value(true);
  });
}
