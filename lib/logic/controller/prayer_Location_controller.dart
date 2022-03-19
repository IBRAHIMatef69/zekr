import 'package:get/get.dart';
import 'package:zekr/model/preyer_data.dart';
import 'package:zekr/model/times_prey.dart';
import 'package:zekr/serveces/prayer_time_services.dart';

class PrayerAndLocationController extends GetxController
    with StateMixin<dynamic> {
  @override
  void onInit() async {
    super.onInit();
    // await getLocaitionData();
    // await getPrayerTimeData();
    PrayerRimeServices().getTimesbyGet().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
    await getLocaitionData();
  }

  // @override
  // void onInit() async {
  //   // TODO: implement onInit
  //   super.onInit();
  //   await getLocaitionData();
  //   await getPrayerTimeData();
  // }
  List li = [
    Datee(name: 'الفجر', date: '05:10'),
    Datee(name: 'الشروق', date: '06:44'),
    Datee(name: 'الضهر', date: '11:49'),
    Datee(name: 'العصر', date: '02:36'),
    Datee(name: 'المغرب', date: '04:55'),
    Datee(name: 'العشاء', date: '06:18'),
  ];
  List eNames = [
    "Fajr",
    "Sunrise",
    "Dhuhr",
    "Asr",
    "Maghrib",
    "Isha",
  ];

  Data? prayerTimeList;

  getLocaitionData() async {
    await PrayerRimeServices().getPosition();
    await PrayerRimeServices().getLAtAndLand();
    update();
  }

  getPrayerTimeData() async {
    try {
      prayerTimeList = await PrayerRimeServices().getTimesbyGet();
    } catch (e) {
      Get.snackbar("$e", "$e");
      print(e.toString());
    }
    update();
  }
}
