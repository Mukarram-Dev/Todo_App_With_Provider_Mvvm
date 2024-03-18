import 'package:flutter/material.dart';
import 'package:task_management/utils/app_constants.dart';

class IntroNotifier with ChangeNotifier {
  final pageIndex = ValueNotifier(0);
  final pageController = PageController();
  void onPageChanged(int val) {
    pageIndex.value = val;
    notifyListeners();
  }

  void incrementPageIndex() {
    if (pageIndex.value < AppConstants.onBoardPagerData.length - 1) {
      pageIndex.value++;
      pageController.jumpToPage(pageIndex.value);
      notifyListeners();
    } else {
      // If it's the last page, navigate to the login route

      // Get.offNamed(RouteName.loginRoute);
    }
  }
}
