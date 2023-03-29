
import 'package:get/get.dart';

class DonationsController extends GetxController {
  var selectedRadio = 10.obs;

  void setSelectedRadio(int val) {
    selectedRadio.value = val;
  }
}
