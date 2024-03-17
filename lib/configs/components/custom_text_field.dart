import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool isObsecureText;
  final TextInputType textInputType;
  final String hintTitle;
  final String? Function(String?)? validator;
  final String? errorText;
  final double paddingHorizontal;
  final double contentPaddingHorizontal;
  final Color borderColor;
  final IconData prefixIcon;

  final Function(String)? onFieldSubmitted;

  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    this.isObsecureText = false,
    required this.textInputType,
    required this.hintTitle,
    this.validator,
    this.errorText,
    this.paddingHorizontal = 20,
    this.contentPaddingHorizontal = 20,
    this.borderColor = const Color(0xffa90084),
    this.onFieldSubmitted,
    this.prefixIcon = Icons.abc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.appBarColor,
        child: TextFormField(
            controller: controller,
            obscureText: isObsecureText,
            validator: validator,
            onSaved: (value) {
              controller.text = value!;
            },
            textInputAction: TextInputAction.done,
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              hintText: hintTitle,
              hintStyle: const TextStyle(
                letterSpacing: 1.0,
                fontFamily: 'Inter',
              ),
              prefixIcon: Icon(prefixIcon),
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            )),
      ),
    );
  }
}
