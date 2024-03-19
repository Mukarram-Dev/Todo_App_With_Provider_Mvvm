import 'package:flutter/material.dart';
import 'package:task_management/model/task_model.dart';
import 'package:task_management/utils/app_constants.dart';

class TaskListNotifier extends ChangeNotifier {
  int _currentIndex = 0;
  final List<TaskModel> _taskList = AppConstants.taskList;
  String _selectedStatus = 'TO DO';

  int get currentIndex => _currentIndex;
  List<TaskModel> get taskList => _taskList;
  String get selectedStatus => _selectedStatus;

  List<TaskModel> get filteredList => _taskList
      .where((element) => element.taskStatus
          .toLowerCase()
          .contains(_selectedStatus.toLowerCase()))
      .toList();

  void changeTabIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setTaskStatus(int id, String newStatus) {
    final index = _taskList.indexWhere((element) => element.taskId == id);
    _taskList[index] = _taskList[index].copyWith(taskStatus: newStatus);
    notifyListeners();
  }

  void setSelectedStatus(String status) {
    _selectedStatus = status;
    notifyListeners();
  }
}
