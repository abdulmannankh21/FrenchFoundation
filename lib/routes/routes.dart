
import 'package:fafapp/bindings/export.dart';
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
    GetPage(
      name: RouteNames.navigation,
      page: () => BottomNavigation(),
      binding: BottomNavigationBindings(),
    ),
    GetPage(
      name: RouteNames.donation,
      page: () => DonationScreen(),
      binding: DonationsBinding(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => HomeScreen(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: RouteNames.explore,
      page: () => ExploreRegionalEvents(),
      binding: ExploreBinding(),
    ),
    GetPage(
      name: RouteNames.blog,
      page: () => BlogScreen(),
      binding: BlogBindings(),
    ),
  ];

  static Future<dynamic>? appRoutes(final String routeName) {
    switch (routeName) {
      case RouteNames.splash:
      case RouteNames.onboarding:
      case RouteNames.login:
        return Get.offAllNamed(routeName);
      case RouteNames.forgot:
      case RouteNames.navigation:
      case RouteNames.donation:
      case RouteNames.home:
      case RouteNames.explore:
      case RouteNames.blog:
      case RouteNames.setting:
        return Get.toNamed(routeName);
      default:
        return _errorRoute();
    }
  }

  static Future<dynamic>? _errorRoute() {
    return Get.to(Container());
  }
}
