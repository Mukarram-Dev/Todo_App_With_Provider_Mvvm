import 'package:flutter/material.dart';
import 'package:task_management/res/theme/colors.dart';
import 'package:task_management/res/theme/text_theme_style.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.title,
      required this.onPress,
      this.loading = false,
      this.height = 50,
      this.width = 200,
      this.textColor = AppColors.white,
      this.buttonColor = AppColors.primaryColor});

  final String title;
  final VoidCallback onPress;
  final bool loading;
  final double height, width;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: loading
            ? const CircularProgressIndicator()
            : Center(
                child: Text(
                  title,
                  style: AppTextStyles.interBody(
                      color: textColor, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
