import 'package:fafapp/Constants/Color/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: FAFColors.bgColor,
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Image.asset("assets/images/splashmap.png")),
          Center(child: Image.asset("assets/images/splashlogo.png" , width: 200,height: 200,)),
        ],
      ),
    );
  }
}
