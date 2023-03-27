import 'package:get/get.dart';
import '../Screen/Splash Screen/splash_contract.dart';
import '../Screen/Splash Screen/splash_controller.dart';


class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashPresenterImpl());
  }
}
