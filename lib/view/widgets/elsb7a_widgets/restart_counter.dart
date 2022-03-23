import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:zekr/logic/controller/seb7a_controller.dart';

class RestartCounter extends StatelessWidget {
    RestartCounter({Key? key}) : super(key: key);
    final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: MediaQuery.of(context).size.width*.13,
        height:  MediaQuery.of(context).size.width*.13,
        decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff4E9F3D),
                  Color(0xff1E5128),
                 ]),
            borderRadius: BorderRadius.circular(35)),
        child: GetBuilder<Seb7aController>(
          builder: (_) {
            return InkWell(
              onTap: controller.zero,
              child: Center(
                  child: Icon(Icons.rotate_right, color: Colors.white)),
            );
          },
        ),
      ),
    );
  }
}
