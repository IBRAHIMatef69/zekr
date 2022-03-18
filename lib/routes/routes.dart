import 'package:get/get.dart';
import 'package:zekr/logic/bindings/home_binding.dart';
import 'package:zekr/logic/bindings/prayer_time_binding.dart';
import 'package:zekr/logic/bindings/qiblah_binding.dart';
import 'package:zekr/logic/bindings/splash_binding.dart';
import 'package:zekr/view/screens/drawer_screens/prayer_time_screen.dart';
import 'package:zekr/view/screens/drawer_screens/qiblah_screen.dart';
import 'package:zekr/view/screens/home_screen.dart';
import 'package:zekr/view/screens/splach_screen.dart';
import 'package:zekr/view/screens/quran_screens/surah_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: Routes.surahScreen,
      page: () => SurahScreen(),
    ),
    GetPage(transitionDuration: Duration(milliseconds: 2700), transition: Transition.fadeIn,
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: Routes.prayerTimeScreen,
      page: () => PrayerTimeScreen(),
      bindings: [PrayerBinding()],
    ),  GetPage(
      name: Routes.qiblahScreen,
      page: () => QiblahScreen(),
      bindings: [QiblahBinding()],
    ),
  ];
}

class Routes {
  static const splashScreen = "/splashScreen";
  static const homeScreen = "/homeScreen";
  static const surahScreen = "/surahScreen";
  static const prayerTimeScreen = "/prayerTimeScreen";
  static const qiblahScreen = "/qiblahScreen";
}
