import 'dart:async';
import 'dart:math' show pi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/qiblah_controller.dart';
import 'package:zekr/view/widgets/qiblah_widgets/location_error_widget.dart';
import 'package:zekr/view/widgets/qiblah_widgets/qiblah_qombas_widget.dart';

class QiblahScreen extends StatefulWidget {
  @override
  State<QiblahScreen> createState() => _QiblahScreenState();
}

class _QiblahScreenState extends State<QiblahScreen> {
  final controller = Get.find<QiblahController>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: controller.stream,
      builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return CupertinoActivityIndicator();
        if (snapshot.data!.enabled == true) {
          switch (snapshot.data!.status) {
            case LocationPermission.always:
            case LocationPermission.whileInUse:
              return QiblahCompassWidget();

            case LocationPermission.denied:
              return LocationErrorWidget(
                error: "Location service permission denied",
                callback: controller.checkLocationStatus,
              );
            case LocationPermission.deniedForever:
              return LocationErrorWidget(
                error: "Location service Denied Forever !",
                callback: controller.checkLocationStatus,
              );
            // case GeolocationStatus.unknown:
            //   return LocationErrorWidget(
            //     error: "Unknown Location service error",
            //     callback: _checkLocationStatus,
            //   );
            default:
              return Container();
          }
        } else {
          return LocationErrorWidget(
            error: "Please enable Location service",
            callback: controller.checkLocationStatus,
          );
        }
      },
    );
  }
}
