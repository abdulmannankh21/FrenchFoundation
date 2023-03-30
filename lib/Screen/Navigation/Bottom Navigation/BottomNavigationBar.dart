import 'package:fafapp/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {

    return GetBuilder<BottomNavigationController>(
      init: BottomNavigationController(),
      builder: (controller) => Scaffold(
        body: PageView(
          controller: controller.pageController,
          children: [
            // Replace these with your own pages
            HomeScreen(),
            ExploreRegionalEvents(),
            BlogScreen(),
            SettingScreen(),
          ],
          onPageChanged: controller.changeIndex,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AppRoutes.appRoutes(RouteNames.donation);
          },
          backgroundColor: AppColors.primaryColor,
          child: SvgPicture.asset("assets/icons/moneybag.svg"),
        ),
        bottomNavigationBar: Obx(
          () => SalomonBottomBar(
            currentIndex: controller.currentIndex,
            onTap: controller.changeIndex,
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home_filled),
                title: Text("Accueil"),
                selectedColor: AppColors.primaryColor,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: Icon(Icons.explore),
                title: Text("Explorer"),
                selectedColor: AppColors.primaryColor,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.file_copy_rounded),
                title: Text("Blogs"),
                selectedColor: AppColors.primaryColor,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: Icon(Icons.settings),
                title: Text("Paramètres"),
                selectedColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
