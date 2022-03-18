import 'dart:async';

import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class QiblahController extends GetxController {
  final locationStreamController = StreamController<LocationStatus>.broadcast();

  get stream => locationStreamController.stream;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLocationStatus();
  }

  Future<void> checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final s = await FlutterQiblah.checkLocationStatus();
      locationStreamController.sink.add(s);
      update();
    } else
      locationStreamController.sink.add(locationStatus);
    update();
  }

  @override
  void disposeId(Object id) {
    // TODO: implement disposeId
    super.disposeId(id);
    locationStreamController.close();
    FlutterQiblah().dispose();
  }
}
