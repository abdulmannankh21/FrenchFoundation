import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'export.dart';
import 'package:fafapp/export.dart';
import 'package:flutter_svg/svg.dart';


class ForgotView extends StatelessWidget {
  ForgotView({Key? key}) : super(key: key);
  ForgotController controller = Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotController>(
        init: ForgotController(),
        builder: (_) => SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.bgColor,
            body: SingleChildScrollView(
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
                            height: Get.height * 0.2,
                          ),
                          Row(
                            children: [
                              Text(
                                "Récupérer le mot de passe",
                                style: TextStyle(
                                  fontSize: 25,
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
                                // onChanged: (_.setEmail),
                                decoration: InputDecoration(
                                  hintText: "Saisir l'e-mail de récupération",
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
                            height: Get.height * 0.02,
                          ),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                                height: verticalValue(50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color(0xFF325da2),
                                ),
                                child: const Center(
                                    child: Text(
                                      'Soumettre',
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
