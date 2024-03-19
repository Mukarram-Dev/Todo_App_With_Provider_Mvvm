import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.title,
      required this.onPress,
      this.height = 50,
      this.width = 200,
      this.textColor = AppColors.white,
      this.buttonColor = AppColors.primaryColor});

  final String title;
  final VoidCallback onPress;
  final double height, width;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyles.poppinsMedium(
                  color: textColor, fontWeight: FontWeight.w500),
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
