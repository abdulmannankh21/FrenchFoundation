import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;


  void login() async {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar("Erreur", "Veuillez entrer votre email et votre mot de passe");
    } else {
      try {
        var response = await http.post(
          'YOUR_API_URL' as Uri,
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            'email': email.value,
            'password': password.value,
          }),
        );
        var data = jsonDecode(response.body);
        if (data['success']) {
          // Get.to(MainScreen());
        } else {
          Get.snackbar("Erreur", data['message']);
        }
      } catch (error) {
        Get.snackbar("Erreur", "Erreur lors de la connexion");
      }
    }
  }

  void setPassword(String value) {
    password.value = value;
  }
  void setEmail(String value) {
    email.value = value;
  }
}
