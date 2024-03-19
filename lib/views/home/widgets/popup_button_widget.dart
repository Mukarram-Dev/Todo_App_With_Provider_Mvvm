import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/views/home/controller/task_list_notifier.dart';

class PopupButtonWidget extends StatelessWidget {
  final TaskListNotifier provider;
  const PopupButtonWidget({Key? key, required this.provider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              provider.filterdList.length, // Use length of filteredList
              (index) => GestureDetector(
                onTap: () {
                  // Update task status in the model class here
                  if (index < AppConstants.menuProgress.length) {
                    provider.setTaskStatus(
                        index, AppConstants.menuProgress[index]);
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: provider.filterdList[index].taskStatus ==
                            AppConstants.menuProgress[index]
                        ? AppColors.lightGreen
                        : AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    AppConstants.menuProgress[index],
                    style: AppTextStyles.interBody(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
