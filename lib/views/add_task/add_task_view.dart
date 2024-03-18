import 'package:flutter/material.dart';
import 'package:task_management/configs/components/custom_button.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/widgets/assigned_widget.dart';
import 'package:task_management/views/add_task/widgets/description_widget.dart';
import 'package:task_management/views/add_task/widgets/textfield_taskname.dart';
import 'package:task_management/views/add_task/widgets/timeline_widget.dart';
import 'package:task_management/views/add_task/widgets/top_bar_widget.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomSheet: BottomSheet(
        enableDrag: false,
        onClosing: () {},
        builder: (context) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomButtonWidget(
              width: double.infinity,
              height: 70,
              title: 'Add Task',
              onPress: () {},
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopAppBarWidget(),
            Gaps.verticalGapOf(20),
            const TaskNameField(),
            Gaps.verticalGapOf(30),
            const AssignedWidget(),
            Gaps.verticalGapOf(20),
            const TimelineWidget(),
            Gaps.verticalGapOf(20),
            const DescriptionWidget(),
            Gaps.verticalGapOf(50),
          ],
        ),
      ),
    );
  }
}
