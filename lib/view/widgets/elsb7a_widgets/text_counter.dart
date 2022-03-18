import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:zekr/logic/controller/seb7a_controller.dart';

class TextCounter extends StatelessWidget {
   TextCounter({Key? key}) : super(key: key);
  final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return         GetBuilder<Seb7aController>(
      builder: (_) {
        return Text(
          '${controller.cunter}',
          style: TextStyle(fontSize: 40, color: Colors.black87),
        );
      },
    );

  }
}
