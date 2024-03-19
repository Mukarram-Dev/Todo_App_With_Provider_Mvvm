import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/home/controller/task_list_notifier.dart';
import 'package:task_management/views/home/widgets/popup_button_widget.dart';

class TaskListWidget extends StatelessWidget {
  final int index;
  const TaskListWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppConstants.listOfColors[index],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Consumer<TaskListNotifier>(
          builder: (context, provider, child) => Column(
            children: [
              //title row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        provider.filterdList[index].taskTitle,
                        style: AppTextStyles.poppinsMedium(),
                      ),
                      Text(
                        provider.filterdList[index].taskType,
                        style: AppTextStyles.poppinSmall(
                            color: AppColors.textColor),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            provider.filterdList[index].taskPrerioty,
                            style: AppTextStyles.interBody(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      PopupButtonWidget(provider: provider)
                    ],
                  ),
                ],
              ),
              //date row
              Gaps.verticalGapOf(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.expand_circle_down),
                      Gaps.horizontalGapOf(10),
                      Text(
                        provider.filterdList[index].taskDate,
                        style: AppTextStyles.interSubtitle(
                            color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0;
                                i < AppConstants.randomImages.length;
                                i++)
                              Align(
                                widthFactor: 0.5,
                                // parent circle avatar.
                                // We defined this for better UI
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  // Child circle avatar
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        AppConstants.randomImages[i]),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
