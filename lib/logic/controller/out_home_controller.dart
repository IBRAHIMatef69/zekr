import 'package:get/get.dart';
import 'package:zekr/model/json_data_model.dart';
import 'package:zekr/serveces/services.dart';

class OutHomeController extends GetxController {
  List<ZekrDataModel> outHomeZekr = [];
  List<ZekrDataModel> sleepZekrScreen = [];
  List<ZekrDataModel> prayZekrScreen = [];
  List<ZekrDataModel> roqiaZekrScreen = [];
  List<ZekrDataModel> doaaZekrScreen = [];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getOutData();
    await getSleepData();
  await  getPreyData();
  await getRoqiaData();
  await getDoaaData();
  }

  getOutData() async {
    try {
      outHomeZekr = await Services().ReadZekrJsonData("outHome");
    } catch (e) {
      return e;
    }
  }

  getSleepData() async {
    try {
      sleepZekrScreen = await Services().ReadZekrJsonData("sleep");
    } catch (e) {
      return e;
    }
  }

  getPreyData() async {
    try {
      prayZekrScreen = await Services().ReadZekrJsonData("afterPrey");
    } catch (e) {
      return e;
    }
  }  getRoqiaData() async {
    try {
      roqiaZekrScreen = await Services().ReadZekrJsonData("afterPrey");
    } catch (e) {
      return e;
    }
  }getDoaaData() async {
    try {
     doaaZekrScreen = await Services().ReadZekrJsonData("afterPrey");
    } catch (e) {
      return e;
    }
  }
}
