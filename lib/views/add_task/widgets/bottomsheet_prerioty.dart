import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';

class BottomSheetPrerioty extends StatelessWidget {
  const BottomSheetPrerioty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 1,
                color: AppColors.hintText,
                width: 80,
              ),
            ),
            Gaps.verticalGapOf(30),
            Text(
              'Priority',
              style: AppTextStyles.poppinsMedium(),
            )
          ],
        ),
      ),
    );
  }
}
