import 'package:task_management/configs/theme/colors.dart';

import 'package:flutter/material.dart';

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
  final FocusNode focusNode;

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
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      obscureText: isObsecureText,
      validator: validator,
      onSaved: (value) {
        controller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: hintTitle,
        hintStyle: const TextStyle(
          letterSpacing: 1.0,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            style: BorderStyle.none,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
