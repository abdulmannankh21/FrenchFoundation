import 'package:get/get.dart';
import 'package:fafapp/Screen/export.dart';

class BottomNavigationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationController>(() => BottomNavigationController());
  }
}
