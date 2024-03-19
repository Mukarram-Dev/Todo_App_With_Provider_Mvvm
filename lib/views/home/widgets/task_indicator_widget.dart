import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/views/home/controller/task_list_notifier.dart';

class TaskIndicatorWidget extends StatelessWidget {
  const TaskIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListNotifier>(
        builder: (context, value, child) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(AppConstants.listOfTabIndicator.length,
                  (index) => textContainer(index, value)).toList(),
            ));
  }
}

Widget textContainer(
  int index,
  TaskListNotifier value,
) {
  return InkWell(
    onTap: () {
      value.changeTabIndex(index);
      value.setSelectedStatus(AppConstants.listOfTabIndicator[index]);
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: value.currentIndex == index
            ? AppColors.primaryColor
            : AppColors.white,
        border: value.currentIndex != index ? Border.all() : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          AppConstants.listOfTabIndicator[index],
          style: AppTextStyles.interBody(
              color: value.currentIndex == index
                  ? AppColors.white
                  : AppColors.primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
