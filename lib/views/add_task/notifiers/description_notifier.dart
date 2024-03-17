import 'package:flutter/material.dart';

class DescriptionNotifier with ChangeNotifier {
  var description = ValueNotifier(
      'Create a set of standards for design and code along with components that unify both practices');

  void updateDescription(String newDescription) {
    description.value = newDescription;
    notifyListeners();
  }
}
