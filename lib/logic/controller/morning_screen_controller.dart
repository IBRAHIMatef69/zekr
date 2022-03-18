import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:get/get.dart';
import 'package:zekr/model/json_data_model.dart';
import 'package:zekr/model/preyer_data.dart';

import '../../serveces/services.dart';

class MorningScreenController extends GetxController {
  List<ZekrDataModel> morningZekrList = [];

  List<NightZekr> lis = [
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 4,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 7,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 10,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 100,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 100,
        r: Colors.red,
        g: Colors.green),
    NightZekr(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 100,
        r: Colors.red,
        g: Colors.green),
  ];

  List<NightZ> li = [
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 4,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 7,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 10,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 3,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 1,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 100,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 100,
        r: Colors.red,
        g: Colors.green),
    NightZ(
        zekr: 'سُبْحـانَ اللهِ وَبِحَمْـدِه',
        num: 100,
        r: Colors.red,
        g: Colors.green),
  ];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getData();
  }

  getData() async {
    try {
      morningZekrList = await Services().ReadZekrJsonData("morning");
      print("${morningZekrList[1].zekr}");
      print("//////////////////////success");
      update();
    } catch (e) {
      return e;
    }
  }

  minusCounter(int index) {
    if (lis[index].num > 0) {
      lis[index].num--;
      Vibrate.feedback(FeedbackType.medium);
      update();
    }
  }

  restartCount(int index) {
    lis[index].num = li[index].num;
    update();
  }
}
