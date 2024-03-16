import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/utils/dimensions.dart';

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
      height: Dimensions.paddingSizeDefault,
      width: Dimensions.paddingSizeDefault,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.primaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
