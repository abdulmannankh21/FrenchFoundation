import 'package:get/get.dart';
import '../../../../Models/blogs_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'export.dart';

class BlogController extends GetxController with StateMixin<BlogScreen> {
  late Blog blog;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;
    fetchBlogs();
  }

  Future<void> fetchBlogs() async {
    try {
      var uri = Uri.parse('http://fed.devtechub.com/api/get_main_blogs');
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        blog = Blog.fromJson(data);
        isLoading.value = false;
      } else {
        isLoading.value = false;
        throw Exception('Failed to load blogs');
      }}
    catch (e) {
      print("No Data");
      isLoading.value = false;
      update();
    }
  }
}
