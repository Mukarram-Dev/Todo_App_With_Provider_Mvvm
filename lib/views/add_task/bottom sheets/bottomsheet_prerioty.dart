import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/notifiers/selected_priority.dart';

class BottomSheetPrerioty extends StatelessWidget {
  const BottomSheetPrerioty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 3,
                color: AppColors.hintText,
                width: 60,
              ),
            ),
            Gaps.verticalGapOf(30),
            Text(
              'Priority',
              style: AppTextStyles.poppinsMedium(),
            ),
            Gaps.verticalGapOf(20),
            Expanded(
              child: Consumer<SelectedPriority>(
                builder: (context, selectedPriority, child) =>
                    ListView.separated(
                        separatorBuilder: (context, index) =>
                            Gaps.verticalGapOf(10),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: AppConstants.listOfPririoty.length,
                        itemBuilder: (context, index) {
                          final isSelected =
                              selectedPriority.currentIndex.value == index;
                          return GestureDetector(
                            onTap: () {
                              selectedPriority.updateIndex(index);
                              selectedPriority.selectedPriority.value =
                                  AppConstants.listOfPririoty[index];
                              Navigator.pop(context);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 600),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.lightGreen
                                    : AppColors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Center(
                                child: Text(
                                  AppConstants.listOfPririoty[index],
                                  style: AppTextStyles.poppinsMedium(),
                                ),
                              ),
                            ),
                          );
                        }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
