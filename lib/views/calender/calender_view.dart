import 'package:flutter/material.dart';
import 'package:task_management/views/calender/widget/appbar_calender.dart';

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [AppBarCalender()],
        ),
      ),
    );
  }
}
