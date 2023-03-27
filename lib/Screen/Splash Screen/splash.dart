import 'dart:convert';
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
      backgroundColor: colors.white,
      body: Column(
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
    );
  }
}
