import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ---------------------Splash Image-------------
              Image.asset(StaticImg.sploginba),
              SizedBox(height: 60.h),
              // -------------------Sign Up Button--------
              CustomButton(
                bgColor: StaticColors.btnColor,
                fColor: StaticColors.whiteColor,
                onTap: () =>
                    Get.toNamed(Routes.SIN_UP_PAGE), // Navigate to SignUp page
                title: StaticString.signUp, // Button title
              ),

              // -------------------Text 'OR'--------------
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  StaticString.or, // Text to separate buttons
                  style: StaticStyle.style(
                    16.sp, // Font size scaling
                    StaticColors.grayColor, // Text color
                    FontWeight.w400, // Font weight
                  ),
                ),
              ),

              // -------------------Google Sign In Button--------
              CustomButton(
                bgColor: StaticColors.whiteColor,
                fColor: StaticColors.textSeColor,
                onTap: () {}, // Implement Google sign-in functionality
                title: StaticString.gAccount, // Button title
                height: 42,
                fWight: FontWeight.w400,
                isLeftIcon: true, // Icon on the left side
                borderRadius: 12,
                leftIcon: StaticImg.google, // Google icon
                isIconColor: true, // Icon color set to true
              ),

              SizedBox(height: 17),

              // -------------------Apple Sign In Button--------
              CustomButton(
                bgColor: StaticColors.whiteColor,
                fColor: StaticColors.textSeColor,
                onTap: () {}, // Implement Apple sign-in functionality
                title: StaticString.apAccount, // Button title
                height: 42,
                fWight: FontWeight.w400,
                isLeftIcon: true, // Icon on the left side
                borderRadius: 12,
                leftIcon: StaticImg.apple, // Apple icon
                isIconColor: true, // Icon color set to true
              ).marginOnly(bottom: 30.w), // Add margin at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
