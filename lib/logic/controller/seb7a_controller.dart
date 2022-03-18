import 'dart:async';

 import 'package:flutter_vibrate/flutter_vibrate.dart';
 import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Seb7aController extends GetxController {
  bool isPress = false;
  var cunter = 0;
  var text = 'سُبْحـان الله';

  List<String> list = [
    "الله أكبر",
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِِ",
    " سُبْحَانَ اللَّه الْعَظِيم وَبِحَمْدِهِِِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
    "لا إلهَ إلاَّ اللَّه وحْدهُ لاَ شَرِيكَ لهُ، لَهُ المُلْكُ، ولَهُ الحمْدُ، وَهُو عَلَى كُلِّ شَيءٍ قَدِيرٌ",
    "لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِالله",
    "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
    "اللَّهُــمَّ صَلِّ وَسَـــلِّمْ وَبَارِكْ على نَبِيِّنَـــا مُحمَّد",
    "أستغفر الله",
    "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، لَا إلَهَ إلَّااللَّهُ ، اللَّهُ أَكْبَرُ",
    "لآ اِلَهَ اِلّا اللّهُ",
  ];

  setText(index) {
    text = list[index];
    update();
  }

  viberate() {
    Vibrate.feedback(FeedbackType.medium);
    update();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    GEtInt();
    super.onInit();
  }

  int? prefsCounter;
  int? getStorageInt;

  void incremant() {
    cunter++;
    isPress = !isPress;
    update();
  }

  GEtInt() async {
    getStorageInt = getStorage.read<int>("getStorageInt");
  }

  void zero() {
    cunter = 0;
    if (cunter == 0) {
      isPress = false;
    }
    update();
  }

  GetStorage getStorage = GetStorage();


  incrementStorage() async {
    getStorageInt = (await getStorage.read<int>("getStorageInt") ?? 0) + 1;
    await getStorage.write("getStorageInt", getStorageInt);
    prefsCounter = getStorageInt;
    update();
  }

//
  var start = 0;
  Timer? timer;

  void startTimer(int i) {
    if (timer != null) {
      timer!.cancel();
      update();
    }

    start = i;
    timer = Timer.periodic(Duration(milliseconds: 700),
        (timer)  {start < 1 ? timer.cancel() : start -= 1;
    update();
    });
    update();
    print(start);
  }
}
