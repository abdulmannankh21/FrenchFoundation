import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:fafapp/res/export.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OnBoardingSlider(
        leading: Image.asset("assets/images/leadinglogo.png"),
        finishButtonText: 'Commencer',
        onFinish: () {
          // Navigator.push(
          //   context,
          //   CupertinoPageRoute(
          //     builder: (context) => const RegisterPage(),
          //   ),
          // );
        },
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: AppColors.primaryColor,

        ),
        skipTextButton: Text(
          'Sauter',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Text(
          'Connexion',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailingFunction: () {
          // Navigator.push(
          //   context,
          //   CupertinoPageRoute(
          //     builder: (context) => const LoginPage(),
          //   ),
          // );
        },
        controllerColor: AppColors.primaryColor,
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
        imageHorizontalOffset: Get.width * 0.04,
        imageVerticalOffset: Get.height * 0.05,
        background: [
          Image.asset(
            'assets/images/onboarding1.png',
            height: 300,
          ),
          Image.asset(
            'assets/images/onboarding2.png',
            height: 300,
          ),
          Image.asset(
            'assets/images/onboarding3.png',
            height: 300,
          ),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Un Esprit Pionnier',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  "Une Vision Eclairee de L'investissement Humain",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  "Engagements à agir pour sauver l'environnement",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}