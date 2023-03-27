import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyalty/export.dart';

import 'export.dart';

class AppRoutes {
  static List<GetPage> getPage = [
    GetPage(
      name: RouteNames.splash,
      page: () => Splash(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteNames.onboarding,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];

  static Future<dynamic> appRoutes(final String routeName) {
    switch (routeName) {
      case RouteNames.splash:
      case RouteNames.home:
        return Get.toNamed(routeName);
      case RouteNames.onboarding:
      case RouteNames.login:
        return Get.offAllNamed(routeName);
      default:
        return _errorRoute();
    }
  }

  static Future<dynamic> _errorRoute() {
    return Get.to(Container());
  }
}
