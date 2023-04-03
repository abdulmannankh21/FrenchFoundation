import 'package:fafapp/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpacer(5),
                      Text("Paramètres",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          )),
                      Text("Personnalisez vos paramètres",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              color: AppColors.textfieldcolor,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              verticalSpacer(20),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Text("Compte",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                            )),
                      ],
                    ),
                    verticalSpacer(20),

                    _buildListItem(
                      image: "assets/icons/Profileicon.svg",
                      title: 'Mon profil',
                      subtitle: 'Voir et modifier votre profil',
                      onTap: () => Get.toNamed(RouteNames.profile),
                    ),
                    horizontalDividerGrey(),
                    verticalSpacer(20),

                    Row(
                      children: [
                        Text("Autres",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                            )),
                      ],
                    ),
                    verticalSpacer(20),

                    _buildListItem(
                      image: "assets/icons/Iconly-Bold-Paper.svg",
                      title: 'Durée et conditions',
                      subtitle: 'Lisez les conditions pour en savoir plus',
                      onTap: () => Get.toNamed(RouteNames.home),
                    ),
                    horizontalDividerGrey(),
                    verticalSpacer(20),

                    _buildListItem(
                      image: "assets/icons/Iconly-Bold-Shield-Done.svg",
                      title: 'Politique de confidentialité',
                      subtitle: "voir la politique de confidentialité ",
                      onTap: () => Get.toNamed(RouteNames.home),
                    ),
                    horizontalDividerGrey(),
                    verticalSpacer(20),

                    _buildListItem(
                      image: "assets/icons/Iconly-Bold-Info-Square.svg",
                      title: 'À propos de nous',
                      subtitle: 'voir qui nous sommes',
                      onTap: () => Get.toNamed(RouteNames.aboutus),
                    ),
                    horizontalDividerGrey(),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem({required String title,required String subtitle,required String image, required VoidCallback onTap,}) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Container(
          width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: AppColors.textfieldcolor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: SvgPicture.asset(image,color: AppColors.bgColor,))),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}