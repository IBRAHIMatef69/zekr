import 'package:flutter/material.dart';
 import 'package:get/get.dart';

import 'package:zekr/logic/controller/seb7a_controller.dart';
import 'package:zekr/utils/size_config.dart';

class TotalCountInSharedPrefs extends StatelessWidget {
  TotalCountInSharedPrefs({Key? key}) : super(key: key);

  final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'المجموع',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 11, vertical: 2),
            child: Container(
              child: Center(child: GetBuilder<Seb7aController>(
                builder: (_) {
                  return controller.getStorageInt == null
                      ? Text("0")
                      : Text("${controller.getStorageInt}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
                },
              )),
            ),
          ),
        ],
      ),
    );
  }
}
