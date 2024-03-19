import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/model/task_model.dart';
import 'package:task_management/views/home/controller/task_list_notifier.dart';

class PopupButtonWidget extends StatelessWidget {
  final TaskModel taskModel;
  final int index;
  const PopupButtonWidget(
      {Key? key, required this.taskModel, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListNotifier>(
      builder: (context, provider, child) => PopupMenuButton(
        padding: const EdgeInsets.all(0),
        onSelected: (value) {
          _updateTaskStatus(
              value, provider); // Update the task status using value directly
        },
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        itemBuilder: (context) => [
          menuItems('TO DO', 1, index),
          menuItems('IN PROGRESS', 2, index),
          menuItems('DONE', 3, index),
        ],
      ),
    );
  }

  void _updateTaskStatus(int value, TaskListNotifier provider) {
    String status;
    switch (value) {
      case 1:
        status = 'TO DO';
        break;
      case 2:
        status = 'IN PROGRESS';

        break;
      case 3:
        status = 'DONE';

        break;
      default:
        return;
    }

    if (taskModel.taskStatus != status) {
      provider.setTaskStatus(taskModel.taskId, status);
    }
  }

  PopupMenuItem menuItems(String itemName, int value, int index) {
    return PopupMenuItem(
      value: value,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: taskModel.taskStatus == itemName
              ? AppColors.lightGreen
              : AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          itemName,
          style: AppTextStyles.interBody(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
