import 'package:get/get.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/after_prey.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/doaa_screen.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/morning_screen.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/night_screen.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/out_home.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/roqia.dart';
import 'package:zekr/view/screens/hesn_zekr_screens/sleep_zekr.dart';

class HesnScreenController extends GetxController {
  List<String> img = [
    "assets/images/prayer.png",
    "assets/images/prayer (1).png",
    "assets/images/exit.png",
    "assets/images/sleeping.png",
    "assets/images/pray.png"
    ,    "assets/images/pray (1).png","assets/images/pray.png",


  ];

  List<String> name = [
    "اذكار المساء",
    "اذكار الصباح",
    "اذكار الخروج من المنزل",
    "اذكار النوم",
    "اذكار الصلاه",
    "الرقيه الشرعيه",
    "ادعيه واستغفار",
  ];
  List<dynamic> screens = [
    Night(),
    Morning(),
    OutHome(),
    Sleep(),
    AfterPrey(),Roqia(), Doaa(),
  ];
}
