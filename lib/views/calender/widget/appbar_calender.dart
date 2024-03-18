import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/calender/widget/days_calender_widget.dart';

class AppBarCalender extends StatelessWidget {
  const AppBarCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.appBarColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 0.3,
                  blurRadius: 3,
                  offset: const Offset(0, 3),
                  color: AppColors.textColor.withOpacity(0.4))
            ]),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.verticalGapOf(20),
              Gaps.horizontalGapOf(10),
              Text(
                'Calender',
                style: AppTextStyles.poppinsHeading(),
              ),
              Gaps.verticalGapOf(30),
              const DaysCalenderWidget()
            ],
          ),
        ));
  }
}
