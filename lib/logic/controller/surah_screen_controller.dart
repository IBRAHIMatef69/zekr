import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:get/get.dart';

class SurahScreenController extends GetxController {
  RxDouble val = .00.obs;

  ScrollController controler = ScrollController();

  final keyText = GlobalKey();
  Size? size;

  Offset? position;
  double fontSize = 25;

    calculateSizeAndPosition() async{
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final RenderBox box =
      keyText.currentContext!.findRenderObject() as RenderBox;


      position = box.localToGlobal(Offset.zero);
      size = box.size;
      update();
      print(size);
    });
  }

  @override
  void onInit()async {
    // TODO: implement initState
    super.onInit();
   await calculateSizeAndPosition();
  }

  bigFontSize() {
    Vibrate.feedback(FeedbackType.heavy);
    if (fontSize < 46) {
      fontSize++;
      update();
    }
  }
    smallFontSize() {
      Vibrate.feedback(FeedbackType.medium);
      if (fontSize > 15) {
        fontSize--;
      }
      update();
    }
    autpPlay()async {
    await  calculateSizeAndPosition();
      controler.animateTo(
          controler.position.maxScrollExtent,
          duration: Duration(
              milliseconds: (size!.height * 58).toInt()),
          curve: Curves.linear);
      update();
    }
  }
