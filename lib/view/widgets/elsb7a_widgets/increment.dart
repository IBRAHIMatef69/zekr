import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zekr/logic/controller/seb7a_controller.dart';
import 'package:zekr/serveces/local_notification_services.dart';
/*
class Increment extends StatelessWidget {
  Increment({Key? key}) : super(key: key);
  final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: 110,
        height: 70,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xff4E9F3D),
                  Color(0xff1E5128),
                  Color(0xff191A19),
                ]),
            borderRadius: BorderRadius.circular(12)),
        child: GetBuilder<Seb7aController>(
          builder: (_) {
            return InkWell(
              onTap: () async {

                // controller.incrementCounter();
                controller.incremant();
                controller.viberate();
                controller.incrementStorage();
                controller.startTimer(1);
                // controller.prefsCounter = await _counter;
                // _incrementCounter();
              },
              child: Center(
                  child: Text('سبح',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ))),
            );
          },
        ),
      ),
    );
  }
}
*/

class Increment extends StatelessWidget {
  Increment({Key? key}) : super(key: key);
  final controller = Get.find<Seb7aController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(

        width: MediaQuery.of(context).size.width * .25,
        height: MediaQuery.of(context).size.width * .3,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(55)),
          child: GetBuilder<Seb7aController>(
            builder: (_) {
              return Container(
                
                child: InkWell(borderRadius: BorderRadius.circular(55),
                  onTap: () async {
                    // controller.incrementCounter();

                    controller.incremant();
                    controller.viberate();
                    controller.incrementStorage();
                    controller.startTimer(1);
                    // controller.prefsCounter = await _counter;
                    // _incrementCounter();
                  },
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/fingerprint.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
