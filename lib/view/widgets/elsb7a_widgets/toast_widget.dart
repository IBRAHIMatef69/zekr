import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:zekr/logic/controller/seb7a_controller.dart';

class ToastWidget extends StatelessWidget {
  ToastWidget({Key? key}) : super(key: key);
  final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Seb7aController>(
      builder: (_) {
        return (controller.start > 0)
            ? FadeIn(
                duration: Duration(milliseconds: 400),
                child: Container(
                  padding: EdgeInsets.all(8),
                  // height: 43,
                  // width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      controller.text,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                  ),
                ),
              )
            : Container(
                padding: EdgeInsets.all(8),
                // height: 43,
                // width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    '${controller.text}',
                    style: TextStyle(
                        color: Colors.transparent,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                ),
              );
      },
    );
  }
}
