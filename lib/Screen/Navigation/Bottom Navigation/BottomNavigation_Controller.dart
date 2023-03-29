import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var _currentIndex = 0.obs;
  final PageController pageController = PageController();

  void changeIndex(int index) {
    _currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  int get currentIndex => _currentIndex.value;
}
