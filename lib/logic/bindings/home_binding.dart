import 'package:get/get.dart';
import 'package:zekr/logic/controller/home_controller.dart';
import 'package:zekr/logic/controller/quran_controller.dart';
 import 'package:zekr/logic/controller/seb7a_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
    Get.put(QuranController());
    Get.put(Seb7aController());
   }
}
