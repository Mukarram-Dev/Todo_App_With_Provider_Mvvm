import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/widgets/bottomsheet_prerioty.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.appBarColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.verticalGapOf(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.arrow_back_ios),
                  Gaps.horizontalGapOf(10),
                  Text(
                    'Add new task',
                    style: AppTextStyles.poppinsNormal(
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Gaps.verticalGapOf(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Faster Pay',
                    style: AppTextStyles.poppinsHeading(),
                  ),
                  GestureDetector(
                    onTap: () => showBottomSheet(
                      enableDrag: true,
                      constraints: const BoxConstraints(
                        minHeight: 100,
                        maxHeight: 200,
                        minWidth: double.infinity,
                      ),
                      backgroundColor: AppColors.white,
                      context: context,
                      builder: (context) => const BottomSheetPrerioty(),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Asap',
                            style: AppTextStyles.interBody(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          Gaps.horizontalGapOf(3),
                          const Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
