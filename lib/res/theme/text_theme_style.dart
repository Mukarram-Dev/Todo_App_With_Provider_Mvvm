import 'package:flutter/cupertino.dart';
import 'package:task_management/res/theme/colors.dart';

class AppTextStyles {
  static TextStyle interBody({
    Color color = AppColors.darkBlue,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        height: 1.5);
  }

  static TextStyle interSmall({
    Color color = AppColors.darkBlue,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle interHeading({
    Color color = AppColors.darkBlue,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle interSubtitle({
    Color color = AppColors.darkBlue,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'Inter',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle poppinsHeading({
    Color color = AppColors.primaryColor,
    double fontSize = 28,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle poppinsTitle({
    Color color = AppColors.textColor,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle poppinsNormal({
    Color color = AppColors.secondaryColor,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle poppinSmall({
    Color color = AppColors.secondaryColor,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w500,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static TextStyle poppinsMedium({
    Color color = AppColors.secondaryColor,
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }
}
