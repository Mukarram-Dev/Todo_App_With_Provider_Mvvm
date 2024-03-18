import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';

import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/home/widgets/task_indicator_widget.dart';
import 'package:task_management/views/home/widgets/task_list_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // final propertyController = Get.find<PropertyController>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: FadeIn(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Gaps.verticalGapOf(20),
                Text(
                  'Projects Goals',
                  style: AppTextStyles.poppinsHeading(),
                ),
                Gaps.verticalGapOf(30),
                const TaskIndicatorWidget(),
                Gaps.verticalGapOf(20),
                ListView.separated(
                  separatorBuilder: (context, index) => Gaps.verticalGapOf(10),
                  shrinkWrap: true,
                  primary: false,
                  itemCount: AppConstants.taskList.length,
                  itemBuilder: (context, index) => TaskListWidget(
                    index: index,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
