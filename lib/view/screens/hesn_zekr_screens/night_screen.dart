
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/night_screen_controller.dart';
import 'package:zekr/model/preyer_data.dart';
import 'package:zekr/view/widgets/hesn_elmoslem_widget/zekr_container_widget.dart';
import 'package:zekr/view/widgets/home_screen_widgets/app_bar_container_gradient.dart';

class Night extends StatelessWidget {
  Night({Key? key}) : super(key: key);


  final controller = Get.put(NightScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        flexibleSpace: AppBarGradient(),
        centerTitle: true,
        title: Text(
          'أذكار المساء',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(                  physics: BouncingScrollPhysics(),

        itemCount: controller.lis.length,
        itemBuilder: (_, index) {

          return GetBuilder<NightScreenController>(
            builder: (_) {
              return ZekrContainerWidget(
                zekrBody: controller.lis[index].zekr,
                zekrCount: controller.lis[index].num,
                r: controller.lis[index].r,
                g: controller.lis[index].g,
                onTap: () {
                  controller.minusCounter(index);
                },
                onPressed: () {
                  controller.restartCount(index);
                },
                color: controller.lis[index].num == 0
                    ? controller.lis[index].r
                    : controller.lis[index].g,
              );
            },
          );
        },
      ),
    );
  }
}
