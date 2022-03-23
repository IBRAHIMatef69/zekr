import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/home_controller.dart';
import 'package:zekr/routes/routes.dart';
import 'package:zekr/utils/size_config.dart';
import 'package:zekr/utils/themes.dart';
import 'package:zekr/view/screens/elsb7a_screen.dart';
import 'package:zekr/view/screens/quran_screen.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: ((_) {
      return Padding(
        padding: EdgeInsets.all(0),
        child: Drawer(
          backgroundColor: backGroundColor,
          key: controller.scaffoldKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: SizeConfig.defaultSize! * 2),
                    Card(
                      color: Color(0xffADC2A9),
                      shadowColor: Colors.black87,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.prayerTimeScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "مواقيات الصلاه",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Color(0xffADC2A9),
                      shadowColor: Colors.black87,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(Routes.qiblahScreen);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "القبله",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'للمساعده',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              'هذا التطبيق صنع من اجل التذكير'
                              'والتسبيح فلا تغفل عن نفسك',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: InkWell(
                                onTap: () {
                                  FlutterClipboard.copy('atf343069@gmail.com')
                                      .then((value) {
                                    final snack = SnackBar(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        duration: Duration(seconds: 1),
                                        content: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "تم النسخ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ));
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snack);
                                  });
                                },
                                child: Text(
                                  'atf343069@gmail.com',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: IconButton(
                                  onPressed: () {
                                    FlutterClipboard.copy(
                                        'atf343069@gmail.com');
                                  },
                                  icon: Icon(
                                    Icons.email,
                                    size: 25,
                                    color: Colors.black87,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }));
  }
}
