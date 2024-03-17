import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/notifiers/description_notifier.dart';
import 'package:task_management/views/add_task/widgets/bottomsheet_description.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Description',
                style: AppTextStyles.poppinsMedium(),
              ),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
                  enableDrag: true,
                  constraints: const BoxConstraints(
                      minWidth: double.infinity, minHeight: 200),
                  backgroundColor: Colors.transparent,
                  builder: (context) => const BottomSheetDescription(),
                ),
                child: Text(
                  'Edit',
                  style: AppTextStyles.poppinsNormal(),
                ),
              ),
            ],
          ),
          Gaps.verticalGapOf(10),
          Consumer<DescriptionNotifier>(
            builder: (context, provider, child) => Text(
              provider.description.value,
              maxLines: 3,
              style: AppTextStyles.interBody(color: AppColors.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
