import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../Models/regional_events_model.dart';


class ExploreRegionalEventsController extends GetxController {
  late HorizontalList horizontalList;
  var isLoading = false.obs;
  var state = ["Auvergne-Rhône-Alpes",
    "Bourgogne-Franche-Comté",
    "Brittany",
    "Centre-Val de Loire",
    "Corsica",
    "Grand Est",
    "Hauts-de-France",
    "Paris Region",
    "Normandie",
    "Nouvelle-Aquitaine",
    "Occitanie",
    "Pays de la Loire",
    "Provence Alpes Côte d’Azur",
    "Guadeloupe",
    "French Guiana",
    "Martinique",
    "Mayotte",
    "Réunion",].obs;
  var city = ['Developer', 'Designer', 'Consultant', 'Student'].obs;
  RxString selectedState = ''.obs;
  RxString selectedCity = ''.obs;

  void updateSelectedState(String state) {
    selectedState.value = state;
  }
  void updateSelectedCity(String city) {
    selectedCity.value = city;
  }
  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;
    RegionalEvents();

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
