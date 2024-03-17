import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/gaps.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Timeline',
            style: AppTextStyles.poppinsMedium(),
          ),
          Gaps.verticalGapOf(20),
          Row(
            children: [
              Chip(
                elevation: 3,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                deleteIcon: const Icon(Icons.keyboard_arrow_down),
                label: Text(
                  'Nov 18-19',
                  style: AppTextStyles.poppinSmall(),
                ),
                backgroundColor: AppColors.lightYellow,
                onDeleted: () {},
              ),
              Gaps.horizontalGapOf(10),
              Chip(
                elevation: 3,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                deleteIcon: const Icon(Icons.keyboard_arrow_down),
                label: Text(
                  '12 hrs',
                  style: AppTextStyles.poppinSmall(),
                ),
                backgroundColor: AppColors.lightYellow,
                onDeleted: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
