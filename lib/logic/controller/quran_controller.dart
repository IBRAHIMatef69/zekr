import 'package:get/get.dart';
import 'package:zekr/model/quran_model.dart';
import 'package:zekr/serveces/services.dart';

class QuranController extends GetxController {
  List  QuranList = <QuranDataModel>[];

  @override
  void onInit() async {
    // TODO: implement onInit
    await getData();
    super.onInit();
  }

  getData() async {
    try {
      QuranList = await Services().ReadJsonData();
    } catch (e) {
      return e;
    }
  }
}
