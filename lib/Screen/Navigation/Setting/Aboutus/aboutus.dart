import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fafapp/res/export.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child:
                      SvgPicture.asset("assets/icons/icon_left.svg")),
                  Image.asset(
                    'assets/images/leadinglogo.png',
                    width: 200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/images/PresidenteNew.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Martine Neret Soudin",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: AppColors.textfieldcolor,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              color: AppColors.secondaryColor,
              height: Get.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Un esprit pionnier",
                        style: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mot de la présidente",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Rejoignez la force",
                        style: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: AppColors.textfieldcolor,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Text(
                          "Cher(e)s confédéré(e)s.",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: AppColors.textfieldcolor,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "L’impérieuse nécessité de nous organiser dans l'union nationale des associations de France sous l’égide de la fédération des associations de France, s'est imposée à nos us et coutumes Il n'est nul besoin de vous rappeler l'éminente contribution portée au bénéfice de la nation par la mosaïque des bonnes volontés de france organisées par la loi dite 1901. Ces outils institutionnels que nous promouvons ayant fait preuve de leur considérable efficacité dont la nécessité n'est plus à prouver. \n\n J'accepte la charge, il est mon devoir de porter aux plus hautes instances nos souhaits ainsi que nos volontés de voir aboutir les rêves de nos pairs.\n \n Vive la Fédération Des Associations de France.\n \n Vive la France.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: AppColors.textfieldcolor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text("Contact",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: AppColors.textfieldcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          const Icon(
                            Icons.pin_drop,
                            color: AppColors.primaryColor
                          ),
                          SizedBox(
                            height: Get.height * 0.04,
                          ),
                          const Icon(
                            Icons.mail,
                            color: AppColors.primaryColor
                          ),
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          const Icon(
                            Icons.phone,
                            color: AppColors.primaryColor
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Text(
                            "  34 Avenue Des Champs Elysees",
                            style: TextStyle(
                              color: AppColors.textfieldcolor,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Paris , 75008 , France",
                            style: TextStyle(
                              color: AppColors.textfieldcolor,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          const Text(
                            "franceassos@gmail.com",
                            style: TextStyle(
                              color: AppColors.textfieldcolor,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.04,
                          ),
                          const Text(
                            "01-53-76-25-62",
                            style: TextStyle(
                              color: AppColors.textfieldcolor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
