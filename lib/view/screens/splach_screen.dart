import 'dart:async';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/splash_controller.dart';
import 'package:zekr/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.find<SplashController>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(55),
                child: FadeIn(
                  child: Hero(
                      
                      tag: "h",
                      child: Image.asset("assets/images/h.png")),
                  // Optional paramaters
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: FadeIn(
                  child: Text(
                    '«يَاأَيُّهَا الَّذِينَ آمَنُوا اذْكُرُوا اللَّهَ ذِكْرًا كَثِيرًا»',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontStyle: FontStyle.italic),
                  ),
                  // Optional paramaters
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn,
                ),
              ),
            ],
          ),
        ));
  }
}
