import 'package:get/get.dart';
import 'package:loyalty/screen/export.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
