import 'package:get/get.dart';
import 'package:zekr/logic/controller/qiblah_controller.dart';

class QiblahBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
 Get.put(QiblahController());
  }
}