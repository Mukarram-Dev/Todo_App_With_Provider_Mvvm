import 'package:flutter/material.dart';
import 'package:task_management/configs/theme/colors.dart';
import 'package:task_management/configs/theme/text_theme_style.dart';

class CustomDialogWidget {
  static Future<void> dialogLoading(
      {required String msg, required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            contentPadding: const EdgeInsets.all(16),
            surfaceTintColor: Colors.black.withOpacity(0.5),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
                const SizedBox(height: 20),
                Text(msg, style: AppTextStyles.poppinsNormal())
              ],
            ));
      },
    );
  }

  Future<void> errorDialogue({
    required BuildContext context,
    required String message,
    required String title,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          surfaceTintColor: AppColors.hintText,
          title: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontFamily: 'Inter',
              fontSize: 20,
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          backgroundColor: AppColors.hintText,
          content: Text(
            message,
            style: const TextStyle(
              color: AppColors.hintText,
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'OK',
                      style: TextStyle(color: AppColors.hintText),
                    ),
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

// Future<bool> confirmDialogue({
//   required BuildContext context,
//   required String message,
//   required String title,
// }) {
//   return showDialog<bool>(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           surfaceTintColor: Get.isDarkMode ? blackColor : lightGrey,
//           title: Text(
//             title,
//             textAlign: TextAlign.left,
//             style: TextStyle(
//               color: Get.isDarkMode ? fontGrey : primaryColor,
//               fontFamily: bold,
//               fontSize: 20,
//             ),
//           ),
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//           backgroundColor: Get.isDarkMode ? blackColor : lightGrey,
//           content: Text(
//             message,
//             style: TextStyle(
//               color: Get.isDarkMode ? fontGrey : darkFontGrey,
//             ),
//           ),
//           actions: <Widget>[
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Get.isDarkMode ? darkFontGrey : fontGrey,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: Text(
//                       'Cancel',
//                       style: TextStyle(
//                           color: Get.isDarkMode ? fontGrey : primaryColor),
//                     ),
//                     onPressed: () => Navigator.of(context).pop(false),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: TextButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: primaryColor,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: const Text(
//                       'Confirm',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onPressed: () => Navigator.of(context).pop(true),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         );
//       }).then(
//     (value) => value ?? false,
//   );
// }
}
