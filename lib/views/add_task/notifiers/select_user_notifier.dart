import 'package:flutter/material.dart';
import 'package:task_management/utils/utils.dart';

class SelectUserNotifier with ChangeNotifier {
  final userAssigned = ValueNotifier(<String>[]);

  void assignUser(String user) {
    if (!userAssigned.value.contains(user)) {
      userAssigned.value.add(user);
      notifyListeners();
    } else {
      Utils.toastMessage('User Already Added');
    }
  }

  void deleteassignUser(String user) {
    if (userAssigned.value.contains(user)) {
      userAssigned.value.remove(user);
      notifyListeners();
    }
  }
}
