import 'package:flutter/cupertino.dart';
import 'package:fafapp/export.dart';

class SplashComponents {
  Widget getSplashLogo() {
    return Image.asset(
      "assets/images/splashlogo.png",
      width: sizes.width * 0.5,
      fit: BoxFit.fitWidth,
    );
  }
}
