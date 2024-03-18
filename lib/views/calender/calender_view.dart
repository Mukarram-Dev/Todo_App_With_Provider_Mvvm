import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/calender/widget/appbar_calender.dart';
import 'package:task_management/views/calender/widget/event_list_widget.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FadeInDown(child: const AppBarCalender()),
            Gaps.verticalGapOf(40),
            FadeInUp(
              child: ListView.separated(
                separatorBuilder: (context, index) => Gaps.verticalGapOf(10),
                shrinkWrap: true,
                itemCount: AppConstants.taskList.length,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) => EventListWidget(
                  index: index,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
