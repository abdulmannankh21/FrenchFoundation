import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:fafapp/Screen/export.dart';
class ForgotBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotController>(
          () => ForgotController(),
    );
  }
}