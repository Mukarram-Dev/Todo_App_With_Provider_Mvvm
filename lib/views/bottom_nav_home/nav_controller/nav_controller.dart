import 'package:flutter/material.dart';

class NavPageController with ChangeNotifier {
  final tabIndex = ValueNotifier<int>(0);

  void changeTabIndex(int index) {
    tabIndex.value = index;
    notifyListeners();
  }
}
