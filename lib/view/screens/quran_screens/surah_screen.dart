import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';
import 'package:zekr/logic/controller/surah_screen_controller.dart';
import 'package:zekr/utils/size_config.dart';
import 'package:zekr/view/widgets/home_screen_widgets/app_bar_container_gradient.dart';

import '../../../utils/themes.dart';

class SurahScreen extends StatelessWidget {
  SurahScreen({Key? key}) : super(key: key);
  var data = Get.arguments;
  final controller = Get.put(SurahScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: AppBarGradient(),
        title: Text(
          data[0],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        actions: [
          // GetBuilder<SurahScreenController>(
          //   builder: (_) {
          //     return DropdownButton(
          //       elevation: 5,
          //       borderRadius: BorderRadius.circular(25),
          //       alignment: Alignment.centerRight,
          //       dropdownColor: backGroundColor,
          //       onChanged: (value) {},
          //       items: [
          //         DropdownMenuItem(
          //           alignment: Alignment.centerRight,
          //           child: Directionality(
          //             textDirection: TextDirection.rtl,
          //             child: Text(
          //               "اضغط للتشغيل التلقائي",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ),
          //           value: " ",
          //           onTap: () {
          //             controller.autpPlay();
          //           },
          //         ),
          //         DropdownMenuItem(
          //           onTap: () {
          //             controller.bigFontSize();
          //           },
          //           alignment: Alignment.centerRight,
          //           child: Directionality(
          //             textDirection: TextDirection.rtl,
          //             child: Text(
          //               "تكبير حجم الخط",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ),
          //           value: " ",
          //         ),
          //         DropdownMenuItem(
          //           onTap: () {
          //             controller.smallFontSize();
          //           },
          //           alignment: Alignment.centerRight,
          //           child: Directionality(
          //             textDirection: TextDirection.rtl,
          //             child: Text(
          //               "تصغير حجم الخط",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ),
          //           value: " ",
          //         ),
          //       ],
          //       iconSize: 25,
          //       icon: Icon(
          //         Icons.more_vert_rounded,
          //         color: Colors.white,
          //       ),
          //     );
          //   },
          // ),
          SizedBox(
            width: SizeConfig.defaultSize! * .5,
          )
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_outlined),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 15,
                  child: SingleChildScrollView(
                      controller: controller.controler,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        child: Card(
                          shadowColor: Color(0xff1E5128),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: GetBuilder<SurahScreenController>(
                              builder: (_) {
                                return Center(
                                    child: SelectableText(
                                  data[1].toString(),
                                  key: controller.keyText,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: controller.fontSize,
                                      height: 1.3),
                                ));
                              },
                            ),
                          ),
                        ),
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .85,
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: Obx(() {
                        return SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Color(0xffB1E693),
                            inactiveTrackColor: Color(0xff1E5128),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 7.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 12.0),
                          ),
                          child: Slider(
                            thumbColor: Color(0xff072227),
                            // max: MediaQuery.of(context).size.height,
                            // min: 0,
                            value: controller.val.value,
                            onChanged: (double newValue) {
                              controller.val.value = newValue;
                              print(newValue);

                              //
                              // Scrollable.ensureVisible(context ,
                              //  alignment:0,
                              //  duration: Duration(milliseconds: 100));

                              controller.controler.jumpTo(
                                controller.size!.height * newValue,
                              );
                            },
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: GetBuilder<SurahScreenController>(
        builder: (_) {
          return SpeedDial(
            child: const Icon(Icons.add),
            speedDialChildren: <SpeedDialChild>[
              SpeedDialChild(
                child: Icon(Icons.play_circle_outline_rounded),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffB1E693),
                label: 'اضغط للتشغيل التلقائي',
                onPressed: () {
                  controller.autpPlay();
                },
              ),
              SpeedDialChild(
                closeSpeedDialOnPressed: false,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                foregroundColor: Colors.black,
                backgroundColor: Color(0xff1E5128),
                label: 'تكبير حجم الخط',
                onPressed: () {
                  controller.bigFontSize();

                },
              ),
              SpeedDialChild(
                closeSpeedDialOnPressed: false,
                child: const Icon(Icons.remove),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff072227),
                label: 'تصغير حجم الخط',
                onPressed: () {
                  controller.smallFontSize();
                },
              ),
            ],
            closedForegroundColor: Colors.black,
            openForegroundColor: Colors.white,
            closedBackgroundColor: Colors.white,
            openBackgroundColor: Colors.black,
          );
        },
      ),
    );
  }
}
