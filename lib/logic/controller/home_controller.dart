import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workmanager/workmanager.dart';
import 'package:zekr/serveces/local_notification_services.dart';
import 'package:zekr/view/screens/elsb7a_screen.dart';
import 'package:zekr/view/screens/hesn_elmoslem.dart';
import 'package:zekr/view/screens/quran_screen.dart';

class HomeController extends GetxController {
  List<Widget> TabScreens = [Elsb7aScreen(), QuranScreen(), HesnElmoslem()];

  @override
  void onInit() async {
    // TODO: implement onInit
    Workmanager().registerPeriodicTask(
      "1",
      "periodic Notification",
      frequency: Duration(hours: 11,),
    );

    Workmanager().registerPeriodicTask(
      "2",
      "periodic Notification at day",
      frequency: Duration(days: 1),
    );


    update();
    super.onInit();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
}
