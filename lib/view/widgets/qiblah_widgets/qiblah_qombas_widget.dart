import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:get/get.dart';
 import 'package:zekr/view/widgets/home_screen_widgets/app_bar_container_gradient.dart';

class QiblahCompassWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: AppBarGradient(),
        title: Text(
          "القبله",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
           Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * .1,
                  width: MediaQuery.of(context).size.width * .1,
                  child: Image.asset(
                    'assets/images/kaaba.png', // compass
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.width * .2,
                width: MediaQuery.of(context).size.width * .2,
                child: Image.asset(
                  'assets/images/play.png', // compass
                ),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.width * .7,
              width: MediaQuery.of(context).size.width * .7,
              child:
              StreamBuilder(
                  stream: FlutterQiblah.qiblahStream,
                  builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
                    if(snapshot.hasData  ){
                      // final qiblahDirection = snapshot.data;
                      // var angle = ((qiblahDirection!.qiblah) * (pi / 180) * -1);

                      return Transform.rotate(
                      angle: ((snapshot.data!.qiblah) * (pi / 180) * -1),
                      child: Image.asset(
                        'assets/images/location-marker.png',
                        color: Color(0xff46ceac), // compass
                      ),
                    );}
                  else
                      return CupertinoActivityIndicator();



                  }),
            ),
           Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  Text(
                    " قم بمحاذاه راس السهمين للحصول علي الاتجاه الصحيح للقبله",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800],
                        fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "لاتضع الجهاز بالقرب من شيئ معدني",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800],
                        fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
