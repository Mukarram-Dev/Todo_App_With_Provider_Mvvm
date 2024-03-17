import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/notifiers/select_user_notifier.dart';
import 'package:task_management/views/add_task/widgets/bottomsheet_assigned.dart';

class AssignedWidget extends StatelessWidget {
  const AssignedWidget({super.key});

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
                'Assigned To',
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
                      minWidth: double.infinity, minHeight: 400),
                  backgroundColor: Colors.transparent,
                  builder: (context) => const BottomSheetAssigned(),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.add),
                    Text(
                      'Add',
                      style: AppTextStyles.poppinsNormal(),
                    )
                  ],
                ),
              ),
            ],
          ),
          Gaps.verticalGapOf(20),
          Consumer<SelectUserNotifier>(
            builder: (context, provider, child) => Wrap(
                spacing: 20,
                children: provider.userAssigned.value
                    .map(
                      (e) => Chip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        label: Text(
                          e,
                          style: AppTextStyles.poppinSmall(),
                        ),
                        backgroundColor: AppColors.lightGreen,
                        deleteIcon: const Icon(
                          Icons.close,
                        ),
                        onDeleted: () => provider.deleteassignUser(e),
                      ),
                    )
                    .toList()),
          )
        ],
      ),
    );
  }
}
