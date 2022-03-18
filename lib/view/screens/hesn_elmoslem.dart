import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/hesn_screen_controller.dart';

class HesnElmoslem extends StatelessWidget {
  HesnElmoslem({Key? key}) : super(key: key);
  final controller = Get.put(HesnScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HesnScreenController>(
        builder: (_) {
          return ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(controller.screens[index]);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Container(
                            width: 100,
                            height: 40,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  size: 20,
                                ),
                                // Container(
                                //     height: 25,
                                //     width: 25,
                                //     child: Image.asset(controller.img[index])),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          controller.name[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 18),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: .6,
                  color: Colors.black45,
                );
              },
              itemCount: controller.img.length);
        },
      ),
    );
  }
}
