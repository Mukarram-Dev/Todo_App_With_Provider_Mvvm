import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/gaps.dart';

class PagerContent extends StatelessWidget {
  const PagerContent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: double.infinity,
            height: size.height * 0.3,
            child: Material(
              borderRadius: BorderRadius.circular(40),
              child: SvgPicture.asset(
                image,
                fit: BoxFit.cover,
              ),
            )),
        Gaps.verticalGapOf(40),
        Text(text,
            textAlign: TextAlign.center, style: AppTextStyles.poppinsHeading()),
      ],
    );
  }
}
