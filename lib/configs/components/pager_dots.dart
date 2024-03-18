import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';

class PagerDot extends StatelessWidget {
  const PagerDot({Key? key, required this.index, required this.currentIndex})
      : super(key: key);
  final int index;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 8),
      height: 5,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: currentIndex == index
            ? AppColors.primaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
