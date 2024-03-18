import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/utils/gaps.dart';

class EventListWidget extends StatelessWidget {
  final int index;
  const EventListWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              AppConstants.taskList[index].taskTime,
              style: AppTextStyles.interBody(
                color: AppColors.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                  shape: const CircleBorder(
                      side: BorderSide(color: Colors.black, width: 3)),
                  child: Icon(
                    index == 0 ? Icons.circle : Icons.circle_outlined,
                  )),
              const Dash(
                direction: Axis.vertical,
                dashGap: 0,
                length: 90,
              ),
            ],
          ),
          Gaps.horizontalGapOf(10),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: index == 0
                    ? AppColors.primaryColor
                    : AppConstants.listOfColors[index],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppConstants.taskList[index].taskTitle,
                        style: AppTextStyles.poppinsNormal(
                            color: index == 0
                                ? AppColors.white
                                : AppColors.primaryColor),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: index == 0
                                ? AppColors.white
                                : AppColors.primaryColor,
                          ),
                          Gaps.horizontalGapOf(5),
                          Text(
                            AppConstants.taskList[index].taskDuration,
                            style: AppTextStyles.interSmall(
                              color: index == 0
                                  ? AppColors.white
                                  : AppColors.primaryColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Gaps.verticalGapOf(10),
                  Text(
                    AppConstants.taskList[index].taskType,
                    style: AppTextStyles.interBody(color: AppColors.textColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
