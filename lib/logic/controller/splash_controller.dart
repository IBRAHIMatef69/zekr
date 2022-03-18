import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workmanager/workmanager.dart';
import 'package:zekr/routes/routes.dart';
import 'package:zekr/serveces/local_notification_services.dart';
import 'package:zekr/serveces/prayer_time_services.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    Future.delayed(const Duration(milliseconds: 2400), () {
      Get.offNamed(
        Routes.homeScreen,
      );
    });


    super.onInit();
  }

}
