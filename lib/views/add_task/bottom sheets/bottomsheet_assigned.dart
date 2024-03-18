import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/components/custom_text_field.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/app_constants.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/notifiers/select_user_notifier.dart';

class BottomSheetAssigned extends StatelessWidget {
  const BottomSheetAssigned({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'Assign to',
              style: AppTextStyles.poppinsMedium(),
            ),
            Gaps.verticalGapOf(20),
            CustomTextFieldWidget(
              prefixIcon: Icons.search,
              controller: TextEditingController(),
              textInputType: TextInputType.text,
              hintTitle: 'Name or Email',
            ),
            Gaps.verticalGapOf(20),
            Expanded(
              child: Consumer<SelectUserNotifier>(
                builder: (context, provider, child) => ListView.separated(
                    separatorBuilder: (context, index) =>
                        Gaps.verticalGapOf(10),
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: AppConstants.userList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          provider.assignUser(
                              AppConstants.userList[index].username);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          minLeadingWidth: 0,
                          leading: CircleAvatar(
                            backgroundColor: AppColors.appBarColor,
                            radius: 30,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  AppConstants.userList[index].imageUrl),
                            ),
                          ),
                          title: Text(
                            AppConstants.userList[index].username,
                            style: AppTextStyles.poppinsNormal(),
                          ),
                          subtitle: Text(
                            AppConstants.userList[index].email,
                            style: AppTextStyles.interBody(
                                color: AppColors.textColor),
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
