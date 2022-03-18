import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/quran_controller.dart';
import 'package:zekr/view/widgets/quran_screen_widget/devider.dart';
import 'package:zekr/view/widgets/quran_screen_widget/quran_screen_item.dart';

class QuranScreen extends StatelessWidget {
  QuranScreen({Key? key}) : super(key: key);
  final controller = Get.put(QuranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<QuranController>(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return QuranScreenItem(
                  img: controller.QuranList[index].img.toString(),
                  name: controller.QuranList[index].name.toString(),
                  surah: controller.QuranList[index].surah.toString(),
                );
              },
              separatorBuilder: (context, index) {
                return DeviderWidget();
              },
              itemCount: controller.QuranList.length == null
                  ? 0
                  : controller.QuranList.length),
        );
      },
    ));
  }
}
