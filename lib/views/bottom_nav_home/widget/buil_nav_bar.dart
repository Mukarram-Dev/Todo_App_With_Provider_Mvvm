import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/assets/image_assets.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/views/bottom_nav_home/nav_controller/nav_controller.dart';

buildBottomNavigationMenu(context) {
  return Consumer<NavPageController>(
    builder: (context, provider, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: provider.changeTabIndex,
          currentIndex: provider.tabIndex.value,
          backgroundColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.textColor,
          selectedItemColor: AppColors.white,
          items: [
            buildNavItem(ImageAssets.homeFilled, ImageAssets.homeIcon),
            buildNavItem(ImageAssets.calenderIcon, ImageAssets.calenderIcon),
            buildNavItem(ImageAssets.addTaskIcon, ImageAssets.nonFilledAddIcon),
          ],
        ),
      ),
    ),
  );
}

BottomNavigationBarItem buildNavItem(
  String activeIcon,
  String inactiveIcon,
) {
  return BottomNavigationBarItem(
    label: '',
    activeIcon: SvgPicture.asset(
      activeIcon,
      height: 30,
      width: 30,
      colorFilter: const ColorFilter.mode(
        AppColors.white,
        BlendMode.srcIn,
      ),
    ),
    icon: SvgPicture.asset(
      inactiveIcon,
      height: 30,
      width: 30,
      colorFilter: const ColorFilter.mode(
        AppColors.textColor,
        BlendMode.srcIn,
      ),
    ),
  );
}
