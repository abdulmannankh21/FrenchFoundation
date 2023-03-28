import 'package:fafapp/bindings/forgot_bindings.dart';
import 'package:fafapp/bindings/login_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fafapp/export.dart';
import 'package:fafapp/Screen/export.dart';

import 'export.dart';

class AppRoutes {
  static List<GetPage> getPage = [
    GetPage(
      name: RouteNames.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteNames.onboarding,
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => LoginScreen(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: RouteNames.forgot,
      page: () => ForgotView(),
      binding: ForgotBindings(),
    ),
  ];

  static Future<dynamic>? appRoutes(final String routeName) {
    switch (routeName) {
      case RouteNames.splash:
      case RouteNames.home:
        return Get.toNamed(routeName);
      case RouteNames.onboarding:
      case RouteNames.login:
        return Get.offAllNamed(routeName);
      case RouteNames.forgot:
      default:
        return _errorRoute();
    }
  }

  static Future<dynamic>? _errorRoute() {
    return Get.to(Container());
  }
}
