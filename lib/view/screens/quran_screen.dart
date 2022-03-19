import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/quran_controller.dart';
import 'package:zekr/utils/size_config.dart';
import 'package:zekr/view/widgets/quran_screen_widget/devider.dart';
import 'package:zekr/view/widgets/quran_screen_widget/quran_screen_item.dart';

class QuranScreen extends StatelessWidget {
  QuranScreen({Key? key}) : super(key: key);
  final controller = Get.put(QuranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<QuranController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
                controller: controller.scrollController,
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
      ),
      floatingActionButton: GetBuilder<QuranController>(
        builder: (_) {
          return FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 6,
            onPressed: () {
              controller.checkPosithion();
            },
            child: SizedBox(
                height: SizeConfig.defaultSize! * 1.5,
                width: SizeConfig.defaultSize! * 1.3,
                child: Transform.rotate(
                    angle: controller.angl,
                    child: Image.asset(
                      "assets/images/play.png",
                      fit: BoxFit.fill,
                    ))),
          );
        },
      ),
    );
  }
}
