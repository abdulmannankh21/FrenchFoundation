import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fafapp/export.dart';
import 'export.dart';

class SplashScreen extends GetView<SplashController> {
  SplashComponents _components = SplashComponents();

  @override
  Widget build(BuildContext context) {
    controller.initialize(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Positioned(
              bottom: 0.0,
              child: Image.asset("assets/images/splashmap.png",width: Get.width,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: verticalValue(260),
                  child: _components.getSplashLogo(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
