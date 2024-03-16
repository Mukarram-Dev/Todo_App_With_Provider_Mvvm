import 'package:flutter/material.dart';

class TabIndicatorController with ChangeNotifier {
  var currentIndex = ValueNotifier<int>(0);

  void changeTabIndex(int index) {
    currentIndex.value = index;
    notifyListeners();
  }
}
