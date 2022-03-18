import 'package:get/get.dart';
import 'package:zekr/logic/controller/prayer_Location_controller.dart';
import 'package:zekr/logic/controller/splash_controller.dart';

class PrayerBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(
      PrayerAndLocationController(),
    );
  }
}
