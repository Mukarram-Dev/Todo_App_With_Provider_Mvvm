import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_management/res/assets/image_assets.dart';
import 'package:task_management/res/theme/colors.dart';

buildBottomNavigationMenu(context, landingPageController) {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  const TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  return Obx(() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: AppColors.bottombarColor,
            unselectedItemColor: AppColors.textColor,
            selectedItemColor: AppColors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              buildNavItem(ImageAssets.homeIcon, ImageAssets.homeIcon, 'Home'),
              buildNavItem(ImageAssets.unfilledHeart, ImageAssets.unfilledHeart,
                  'Favourite'),
              buildNavItem(
                  ImageAssets.savedIcon, ImageAssets.unsavedIcon, 'Saved'),
            ],
          ),
        ),
      ));
}

BottomNavigationBarItem buildNavItem(
  String activeIcon,
  String inactiveIcon,
  String label,
) {
  return BottomNavigationBarItem(
    activeIcon: Container(
      padding: const EdgeInsets.only(bottom: 7, top: 5),
      child: SvgPicture.asset(
        activeIcon,
        height: 30,
        width: 30,
        colorFilter: const ColorFilter.mode(
          AppColors.white,
          BlendMode.srcIn,
        ),
      ),
    ),
    icon: Container(
        padding: const EdgeInsets.only(bottom: 7, top: 5),
        child: SvgPicture.asset(
          inactiveIcon,
          height: 30,
          width: 30,
          colorFilter: const ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        )),
    label: label,
  );
}
