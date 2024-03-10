import 'package:task_management/res/theme/colors.dart';
import 'package:task_management/res/theme/text_theme_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownWidget extends StatelessWidget {
  final RxString title;
  final List<String> optionList;
  final RxBool isShowList;

  const DropDownWidget({
    super.key,
    required this.title,
    required this.optionList,
    required this.isShowList,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: Get.size.width * 0.7,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(children: [
            InkWell(
              onTap: () => isShowList.value = !isShowList.value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title.value,
                    style: AppTextStyles.interBody(
                      color: AppColors.hintText,
                    ),
                  ),
                  Icon(
                    isShowList.value
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.hintText,
                    size: 32,
                  ),
                ],
              ),
            ),
            if (isShowList.value)
              ListView(
                shrinkWrap: true,
                children: optionList
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  title.value = e;
                                  isShowList.value = !isShowList.value;
                                },
                                child: Text(
                                  e,
                                  style: AppTextStyles.interBody(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                              const Divider()
                            ],
                          ),
                        ))
                    .toList(),
              ),
          ]),
        ),
      ),
    );
  }
}
