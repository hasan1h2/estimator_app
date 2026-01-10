import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart'; // Dialog import for confirmation
import '../controllers/success_page_controller.dart';

class SuccessPageView extends GetView<SuccessPageController> {
  const SuccessPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(StaticImg.checked),  // Success check mark image
              SizedBox(height: 29.h),  // Spacing

              Text(
                StaticString.success,  // Success message title
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(StaticColors.greyNormal),  // Text color from StaticColors
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                child: Text(
                  StaticString.successMas,  // Success message
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(StaticColors.whiteDarker),  // Text color from StaticColors
                  ),
                ),
              ),
              SizedBox(height: 90.h),  // Spacing

              // Continue Button
              CustomButton(
                bgColor: StaticColors.btnColor,  // Background color of the button
                fColor: StaticColors.whiteColor,  // Text color of the button
                onTap: () {
                  // Show dialog to complete the profile

                },
                title: StaticString.continueBtn,  // Continue button text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
