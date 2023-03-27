import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fafapp/routes/export.dart';
import 'package:fafapp/res/export.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'export.dart';

class SplashPresenterImpl extends SplashController with StateMixin<SplashScreen> {
  bool isInitialized = false;

  @override
  void initialize(BuildContext context) async {
    initAppResources(context);
    checkIfInitialized();
    // await _initializerUseCase.getInitRoute().then(
    //   (routeName) {
    //     _performance.endTrace(PerformanceKeys.splashPageLoad);
    //     if (routeName == AppRoutes.tabs) {
    //       executeOnBoarding(routeName);
    //     } else {
    //       view.openNextRoute(routeName: routeName);
    //     }
    //   },
    // );

    // pushNotificationUseCase.initialize(context);

  }

  Future<void> checkIfInitialized() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;
    if (hasSeenOnboarding) {
      // User has already seen onboarding, navigate to main screen
      // navigateToMainScreen();
    } else {
      // User has not seen onboarding, show it
      prefs.setBool('hasSeenOnboarding', true);
      Future.delayed(Duration(seconds: 3), () => navigateToOnBoarding());
    }
  }

  void initAppResources(BuildContext context) {
    if (isInitialized) {
      return;
    }

    isInitialized = true;
    initializeResources(context: context);
  }

  @override
  void openNextRoute(String routeName) {
    // Navigator.pushReplacementNamed(context, routeName);
  }

  @override
  void navigateToOnBoarding() {
    // updateFirebaseDeviceToken();
    AppRoutes.appRoutes(RouteNames.onboarding);
  }
}
