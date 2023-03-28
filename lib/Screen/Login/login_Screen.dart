import 'package:fafapp/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'export.dart';

class LoginScreen extends StatelessWidget {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (_) => Scaffold(
              backgroundColor: AppColors.bgColor,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/Map.png"),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Image.asset(
                                'assets/images/splashlogo.png',
                                width: 150,
                              ),
                              SizedBox(
                                height: Get.height * 0.1,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Connexion",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.04,
                              ),
                              Container(
                                height: verticalValue(50),
                                decoration: BoxDecoration(
                                  color:
                                      AppColors.textfieldcolor.withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                child: Center(
                                  child: TextField(
                                    onChanged: _.setEmail,
                                    decoration: InputDecoration(
                                      hintText: 'Entrez votre courriel',
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                          "assets/icons/Profileicon.svg",
                                        ),
                                      ),
                                      prefixIconConstraints: BoxConstraints(maxHeight: 40,maxWidth: 40),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 16),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.04,
                              ),
                              Container(
                                height: verticalValue(50),
                                decoration: BoxDecoration(
                                  color:
                                      AppColors.textfieldcolor.withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                                child: Center(
                                  child: TextField(
                                    obscureText: true,
                                    onChanged: _.setPassword,
                                    decoration: InputDecoration(
                                        hintText: '  Entrez votre mot de passe  ',
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset("assets/icons/Passwordicon.svg"),
                                        ),
                                        prefixIconConstraints: BoxConstraints(maxHeight: 40,maxWidth: 40),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 16),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [GestureDetector(
                                  onTap: () {
                                    Get.toNamed('/forgot');
                                  },
                                    child: const Text(
                                      "Oubliez votre mot de passe ?",
                                      style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.w800),
                                    ))],
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              GestureDetector(
                                onTap: _.login,
                                child: Container(
                                    height: verticalValue(50),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color(0xFF325da2),
                                    ),
                                    child: const Center(
                                        child: Text(
                                      'Connexion',
                                      style:
                                          TextStyle(color: AppColors.bgColor),
                                    ))),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}
