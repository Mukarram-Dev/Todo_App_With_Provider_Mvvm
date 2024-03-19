import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/components/pager_dots.dart';
import 'package:task_management/configs/routes/routes_name.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/introduction/controller/intro_controller.dart';
import 'package:task_management/views/introduction/widgets/pager_buttons.dart';
import 'package:task_management/views/introduction/widgets/pager_content.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
              child: Consumer<IntroNotifier>(
                builder: (context, provider, child) => Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gaps.verticalGapOf(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        AppConstants.onBoardPagerData.length,
                        (index) => PagerDot(
                            index: index,
                            currentIndex: provider.pageIndex.value),
                      ),
                    ),
                    Gaps.verticalGapOf(40),
                    SizedBox(
                      height: size.height * 0.6,
                      child: PageView(
                        controller: provider.pageController,
                        onPageChanged: (value) {
                          provider.onPageChanged(value);
                        },
                        children: AppConstants.onBoardPagerData
                            .map((data) => PagerContent(
                                  image: data["image"]!,
                                  text: data["text"]!,
                                ))
                            .toList(),
                      ),
                    ),
                    Gaps.verticalGapOf(20),
                    SizedBox(
                      height: size.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const PagerButtons(),
                            Gaps.verticalGapOf(20),
                            InkWell(
                              onTap: () => Navigator.pushReplacementNamed(
                                  context, RouteName.bottomNavRoute),
                              child: Text(
                                'Skip',
                                style: AppTextStyles.interBody(
                                    color: AppColors.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
