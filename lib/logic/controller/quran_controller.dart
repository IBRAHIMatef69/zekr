import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:zekr/model/quran_model.dart';
import 'package:zekr/serveces/services.dart';

class QuranController extends GetxController {
  List QuranList = <QuranDataModel>[];
  ScrollController scrollController = ScrollController();

  @override
  void onInit() async {
    // TODO: implement onInit
    await getData();
    angle();
    super.onInit();
  }

  getData() async {
    try {
      QuranList = await Services().ReadJsonData();
    } catch (e) {
      return e;
    }
  }

  checkPosithion() {
    if (scrollController.position.pixels <=
        scrollController.position.maxScrollExtent / 2) {
      goToLast();
    } else {
      goToFirst();
    }
    angle();
  }
double angl=0;
  angle<double>() {
    if (scrollController.position.pixels <=
        scrollController.position.maxScrollExtent / 2) {
      angl= 0;
    } else {
      angl= 1.05;
      update();
    }
    update();
  }

  goToLast() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 2000),
    ).then((value) => angle());
    update();
  }

  goToFirst() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 2000),
    ).then((value) => angle());
    update();
  }
}
