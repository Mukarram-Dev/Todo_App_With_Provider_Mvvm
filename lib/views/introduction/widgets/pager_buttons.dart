import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/components/custom_button.dart';
import 'package:task_management/configs/routes/routes_name.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/views/introduction/controller/intro_controller.dart';

class PagerButtons extends StatelessWidget {
  const PagerButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<IntroNotifier>(
      builder: (context, value, child) {
        if (value.pageIndex.value != AppConstants.onBoardPagerData.length - 1) {
          // If it's not the last page, show the "Next" button
          return Align(
            alignment: Alignment.bottomRight,
            child: CustomButtonWidget(
              title: 'Continue',
              onPress: () {
                value.incrementPageIndex();
              },
              width: double.infinity,
              height: 70,
            ),
          );
        } else {
          // If it's the last page, show the "Done" button
          return Align(
            alignment: Alignment.bottomRight,
            child: CustomButtonWidget(
              title: 'Continue',
              onPress: () {
                Navigator.pushReplacementNamed(
                    context, RouteName.bottomNavRoute);
              },
              width: double.infinity,
              height: 70,
            ),
          );
        }
      },
    );
  }
}
