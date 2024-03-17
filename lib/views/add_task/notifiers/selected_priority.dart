import 'package:flutter/material.dart';

class SelectedPriority with ChangeNotifier {
  var currentIndex = ValueNotifier(0);
  var selectedPriority = ValueNotifier('Low');

  void updateIndex(int index) {
    currentIndex.value = index;
    notifyListeners();
  }
}
