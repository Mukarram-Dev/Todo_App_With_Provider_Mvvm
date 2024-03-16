import 'package:flutter/material.dart';
import 'package:task_management/views/add_task/widgets/top_bar_widget.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TopBarWidget()],
        ),
      ),
    );
  }
}
