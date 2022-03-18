import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:zekr/logic/controller/seb7a_controller.dart';

class ChooseText extends StatelessWidget {
    ChooseText({Key? key}) : super(key: key);
  final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Seb7aController>(
      builder: (_) {
        return ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xff4E9F3D),
            ),
          ),
          onPressed: () {
            showMenu(
              context: context,
              position: RelativeRect.fromLTRB(10, 30, 70, 100),
              items: [
                PopupMenuItem(
                  value: 1,
                  child: Text("سُبْحَانَ اللَّهِ"),
                  onTap: () {
                    controller.setText(1);
                  },
                ),
                PopupMenuItem(
                  value: 2,
                  onTap: () {
                    controller.setText(2);
                  },
                  child: Text("سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِِ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(3);
                  },
                  value: 3,
                  child: Text(" سُبْحَانَ اللَّه الْعَظِيم وَبِحَمْدِهِِِ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(4);
                  },
                  value: 4,
                  child: Text(
                      "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(5);
                  },
                  value: 5,
                  child: Text(
                      "لا إلهَ إلاَّ اللَّه وحْدهُ لاَ شَرِيكَ لهُ، لَهُ المُلْكُ، ولَهُ الحمْدُ، وَهُو عَلَى كُلِّ شَيءٍ قَدِيرٌ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(6);
                  },
                  value: 6,
                  child: Text("لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِالله"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(7);
                  },
                  value: 7,
                  child: Text("الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(8);
                  },
                  value: 8,
                  child: Text(
                      "اللَّهُــمَّ صَلِّ وَسَـــلِّمْ وَبَارِكْ على نَبِيِّنَـــا مُحمَّد"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(9);
                  },
                  value: 9,
                  child: Text("أستغفر الله"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(10);
                  },
                  value: 10,
                  child: Text(
                      "سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، لَا إلَهَ إلَّااللَّهُ ، اللَّهُ أَكْبَرُ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(11);
                  },
                  value: 11,
                  child: Text("لآ اِلَهَ اِلّا اللّهُ"),
                ),
                PopupMenuItem(
                  onTap: () {
                    controller.setText(0);
                  },
                  value: 12,
                  child: Text("الله أكبر"),
                ),
              ],
              elevation: 8.0,
            );
          },
          child: Text(
              '${controller.text == null ? "أستغفر الله" : controller.text}'),
        );
      },
    );
  }
}
