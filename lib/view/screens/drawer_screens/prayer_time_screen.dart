import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/prayer_Location_controller.dart';
import 'package:zekr/utils/size_config.dart';
import 'package:zekr/utils/themes.dart';
import 'package:zekr/view/widgets/home_screen_widgets/app_bar_container_gradient.dart';

class PrayerTimeScreen extends GetView<PrayerAndLocationController> {
  PrayerTimeScreen({Key? key}) : super(key: key);

  final cc = Get.find<PrayerAndLocationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "مواقيت الصلاه",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        flexibleSpace: AppBarGradient(),
      ),
      body: controller.obx((state) => Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: SizedBox(
                        height: SizeConfig.defaultSize! * 8.5,
                        width: SizeConfig.screenWidth,
                        child: Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              ListTile(
                                trailing: Text(
                                  "ميلادى",style: buildTextStyle2(),
                                ),
                                leading: Text(
                                  state["date"]["readable"].toString(),
                                  style: buildTextStyle(),
                                ),
                              ),
                              SizedBox(height: SizeConfig.defaultSize,),
                              ListTile(
                                trailing: Text(
                                  "هجري",
                                  style: buildTextStyle2(),
                                ),
                                leading: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${state["date"]["hijri"]["weekday"]["ar"]}/${state["date"]["hijri"]["month"]["ar"]}/${state["date"]["hijri"]["year"]}",
                                      style: buildTextStyle(),
                                    ),
                                    Text(
                                      state["date"]["hijri"]["date"].toString(),
                                      style: buildTextStyle(),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(dense: true,
                            leading: Text(state["timings"][cc.eNames[index]],style: buildTextStyle(),),
                            trailing: Text(cc.li[index].name,style: buildTextStyle2(),),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(endIndent: 15,indent: 15,
                            thickness: .4,color: mainColor2,
                            // endIndent:index%2==1? 65:10,
                            // indent:index%2==0? 65:10,
                          );
                        },
                        itemCount: cc.li.length),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "هذه المواعيد بناءً علي موقعك الحالي",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      // body: GetBuilder<PrayerAndLocationController>(
      //   builder: (_) {
      //     return controller.prayerTimeList == null
      //         ? Center(
      //             child: Center(
      //                 child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 CircularProgressIndicator(),
      //                 SizedBox(
      //                   height: 15,
      //                 ),
      //                 Text(
      //                   'افتح النت يعم',
      //                   style: TextStyle(
      //                       fontSize: 20,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.green),
      //                 )
      //               ],
      //             )),
      //           )
      //         : SingleChildScrollView(
      //             physics: BouncingScrollPhysics(),
      //             child: Column(
      //               children: [
      //                 Padding(
      //                   padding: EdgeInsets.only(right: 15, left: 7, bottom: 2),
      //                   child: Column(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(bottom: 25),
      //                         child: Column(
      //                           children: [
      //                             Row(
      //                                 mainAxisAlignment:
      //                                     MainAxisAlignment.spaceBetween,
      //                                 children: [
      //                                   Text(
      //                                     controller.prayerTimeList!.data.date
      //                                         .gregorian.date,
      //                                     style: TextStyle(
      //                                         color: Colors.green,
      //                                         fontSize: 21,
      //                                         fontWeight: FontWeight.bold,
      //                                         fontStyle: FontStyle.normal),
      //                                   ),
      //                                   Text(
      //                                     ' ميلادى',
      //                                     style: TextStyle(
      //                                         fontSize: 21,
      //                                         fontWeight: FontWeight.bold,
      //                                         fontStyle: FontStyle.normal),
      //                                   ),
      //                                 ]),
      //                             Row(
      //                                 mainAxisAlignment:
      //                                     MainAxisAlignment.spaceBetween,
      //                                 children: [
      //                                   Text(
      //                                     controller.prayerTimeList!.data.date
      //                                         .hijri.date,
      //                                     style: TextStyle(
      //                                         color: Colors.green,
      //                                         fontSize: 21,
      //                                         fontWeight: FontWeight.bold,
      //                                         fontStyle: FontStyle.normal),
      //                                   ),
      //                                   Text(
      //                                     'هجري',
      //                                     style: TextStyle(
      //                                         fontSize: 21,
      //                                         fontWeight: FontWeight.bold,
      //                                         fontStyle: FontStyle.normal),
      //                                   ),
      //                                 ]),
      //                           ],
      //                         ),
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             controller.prayerTimeList!.data.timings.fajr,
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Colors.green),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 10),
      //                             child: Text(
      //                               controller.li[0].name,
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             controller
      //                                 .prayerTimeList!.data.timings.sunrise,
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Colors.green),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 10),
      //                             child: Text(
      //                               controller.li[1].name,
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             controller.prayerTimeList!.data.timings.dhuhr,
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Colors.green),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 10),
      //                             child: Text(
      //                               controller.li[2].name,
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             controller.prayerTimeList!.data.timings.asr,
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Colors.green),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 10),
      //                             child: Text(
      //                               controller.li[3].name,
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             controller
      //                                 .prayerTimeList!.data.timings.maghrib,
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Colors.green),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 10),
      //                             child: Text(
      //                               controller.li[4].name,
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding:
      //                       EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             controller.prayerTimeList!.data.timings.isha,
      //                             style: TextStyle(
      //                                 fontSize: 20, color: Colors.green),
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 10),
      //                             child: Text(
      //                               controller.li[5].name,
      //                               style: TextStyle(
      //                                   fontSize: 20,
      //                                   fontWeight: FontWeight.bold),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: EdgeInsets.only(top: 10),
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.end,
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Padding(
      //                             padding: EdgeInsets.only(bottom: 5),
      //                             child: Text(
      //                               "هذه المواعيد بناءً علي موقعك الحالي",
      //                               style: TextStyle(
      //                                   fontWeight: FontWeight.w800,
      //                                   fontSize: 20,
      //                                   color: Colors.black87),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                       Divider(
      //                         height: 0,
      //                         thickness: 1,
      //                         color: Colors.black26,
      //                         indent: 8,
      //                         endIndent: 8,
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           );
      //   },
      // ),
    );
  }

  TextStyle buildTextStyle2() {
    return TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal);
  }

  TextStyle buildTextStyle() {
    return TextStyle(
        color: mainColor3,
        fontSize: 19,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal);
  }
}
