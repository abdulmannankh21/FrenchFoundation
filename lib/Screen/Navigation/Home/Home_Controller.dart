import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../Models/regional_events_model.dart';
import '../../../../Models/upcoming_events_model.dart';

class EventController extends GetxController {
  late HorizontalList horizontalList;
  late VerticalList verticalList ;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;
    RegionalEvents();
    UpcomingEvents();
  }
  Future<void> UpcomingEvents() async {
    try {
      var uri = Uri.parse('http://fed.devtechub.com/api/get_main_events');
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        verticalList = VerticalList.fromJson(data);
        isLoading.value = false;
      } else {
        isLoading.value = false;
        throw Exception('Failed to load Main events');
      }
    } catch (e) {
      print("No Data");
      isLoading.value = false;
      update();
    }
  }
  Future<void> RegionalEvents() async {
    try {
      var uri = Uri.parse('http://fed.devtechub.com/api/get_region_events?region_id=49');
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        horizontalList = HorizontalList.fromJson(data);
        isLoading.value = false;
      } else {
        isLoading.value = false;
        throw Exception('Failed to load Main events');
      }
    } catch (e) {
      print("No Data");
      isLoading.value = false;
      update();
    }
  }
}
