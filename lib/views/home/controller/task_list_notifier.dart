import 'package:flutter/material.dart';
import 'package:task_management/model/task_model.dart';
import 'package:task_management/utils/app_constants.dart';

class TaskListNotifier with ChangeNotifier {
  var currentIndex = ValueNotifier<int>(0);
  var taskList = ValueNotifier(AppConstants.taskList);
  var selectedStatus = ValueNotifier('TO DO');

  List<TaskModel> get filterdList => taskList.value
      .where((element) => element.taskStatus
          .toLowerCase()
          .contains(selectedStatus.value.toLowerCase()))
      .toList();

  void changeTabIndex(int index) {
    currentIndex.value = index;
    notifyListeners();
  }

  setTaskStatus(int index, String newStatus) {
    taskList.value[index] = taskList.value[index].copyWith(
      taskStatus: newStatus,
    );
    notifyListeners();
  }
}
