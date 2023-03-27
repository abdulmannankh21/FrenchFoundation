import 'package:get/get.dart';
import 'package:loyalty/screen/export.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashPresenterImpl());
  }
}
