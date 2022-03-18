import 'package:get/get.dart';
import 'package:zekr/logic/controller/quran_controller.dart';
import 'package:flutter/material.dart';
import 'package:zekr/routes/routes.dart';

class QuranScreenItem extends StatelessWidget {
  final String img;
  final String name;
  final String surah;
  final controller = Get.put(QuranController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.surahScreen,arguments: [name,surah]);

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(width: 30, height: 30, child: Image.asset(img)),
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  QuranScreenItem({
    required this.img,
    required this.name,
    required this.surah,
  });
}
