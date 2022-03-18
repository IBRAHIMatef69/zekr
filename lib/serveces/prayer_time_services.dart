import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:zekr/model/times_prey.dart';

class PrayerRimeServices {
  Future timeGetData() async {
    String dwate = DateTime.now().toIso8601String();

    final position = await Geolocator.getCurrentPosition();
    var pLat = position.latitude;
    var pLong = position.longitude;
    print(position);
    final String url =
        'https://api.aladhan.com/v1/timings/$dwate?latitude=$pLat&longitude=$pLong&method=5';
    // https: //api.aladhan.com/v1/timings/2022-01-11 01:05:58.819Z?latitude=30.5602881&longitude=31.489811&method=5

    http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var obj = res.body;
      var data = jsonDecode(obj);

      return Data.fromJson(data);
    } else {
      print('statusCode=${res.statusCode}');
    }
  }

  Future getPosition() async {
    LocationPermission per;
    //هنا بوليان علشان نعرف التطبيق اليوزر مديله صلاحيات الموقع وال لا
    bool services;
    //هنا بنعمل بوليان نعرف بيه  الابلكيشن واخد واصل  للموقع ولا لاء

    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      await Get.snackbar("Location services", "Enable Location services ",
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
    print("ddddddddddddddddd$services");

    per = await Geolocator.checkPermission();
    //هنا بنتشيك ع البيرميشن
    if (per == LocationPermission.denied) {
//هنا لو مفيش بيرميشن نتا بتديله البيرميشن
      per = await Geolocator.requestPermission();
    }

    if (per == LocationPermission.always) {}
    getLAtAndLand();
    locationMesssage = await getLAtAndLand();

    print("========================$per");
  }

  late Position locationMesssage;

  Future<Position> getLAtAndLand() async {
    return await Geolocator.getCurrentPosition().then((value) => value);
  }
}
