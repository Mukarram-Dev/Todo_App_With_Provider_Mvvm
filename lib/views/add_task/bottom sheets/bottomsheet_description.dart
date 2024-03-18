import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/configs/components/custom_button.dart';
import 'package:task_management/configs/components/custom_text_field.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';
import 'package:task_management/utils/dimensions.dart';
import 'package:task_management/utils/gaps.dart';
import 'package:task_management/views/add_task/notifiers/description_notifier.dart';

class BottomSheetDescription extends StatelessWidget {
  const BottomSheetDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final descriptionController = TextEditingController();
    return SingleChildScrollView(
      child: Container(
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
                'Description',
                style: AppTextStyles.poppinsMedium(),
              ),
              Gaps.verticalGapOf(20),
              CustomTextFieldWidget(
                controller: descriptionController,
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return 'Description should not be null';
                  }
                  return null;
                },
                textInputType: TextInputType.multiline,
                hintTitle: 'Description',
              ),
              Gaps.verticalGapOf(20),
              Consumer<DescriptionNotifier>(
                builder: (context, provider, child) => CustomButtonWidget(
                    width: double.infinity,
                    title: 'Add Description',
                    onPress: () {
                      provider.updateDescription(descriptionController.text);
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
