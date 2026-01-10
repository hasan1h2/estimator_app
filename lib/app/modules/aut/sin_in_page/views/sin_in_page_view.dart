import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/sin_in_page_controller.dart';
import '../inner_widget/from.dart';  // Form widget for user input fields
import '../inner_widget/link_icon.dart';  // Widget for social login options (Google, Apple)

class SinInPageView extends GetView<SinInPageController> {
  const SinInPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20),  // Padding around the whole body
        child: Form(
          key: controller.formKey,  // Form key for form validation
          child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CustomAppBar( onTap: () { Get.toNamed(Routes.SIN_UP_PAGE); },),
              SizedBox(height: 40.h,),
              // ---------------------Sign In Title---------------
              Center(
                child: Text(
                  StaticString.signIn,  // Sign In title
                  style: StaticStyle.style(
                    24.sp,  // Font size with screen scaling
                    StaticColors.textSeColor,  // Text color from StaticColors
                    FontWeight.w600,  // Bold font weight
                  ),
                ),
              ),
              // -------------------------User Input Form--------------
              SizedBox(height: 80.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: From(),  // Custom form widget for user credentials input
              ),
              // ---------------------------Forgot Password Link---------------
              Row(
                mainAxisAlignment: MainAxisAlignment.end,  // Align to the right
                children: [
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.FORGOT_PASS_PAGE),  // Navigate to Forgot Password page
                    child: Text(StaticString.forPass),  // 'Forgot Password' text
                  ),
                ],
              ),
              SizedBox(height: 50.h),  // Vertical spacing

              // -------------------------------Sign In Button---------------------
              CustomButton(
                bgColor: StaticColors.btnColor,  // Background color of the button
                fColor: StaticColors.whiteColor,  // Text color of the button
                onTap: () {
                  // bool valid = controller.saveOnTap();  // Validate the form
                  // valid ? Get.toNamed() : null;
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Do you want to complete your profile?',  // Dialog heading
                    seBtnTitle: 'Ok',  // 'Ok' button text
                    fBtnTitle: 'Cancel',  // 'Cancel' button text
                    onTap1: () => Get.toNamed(Routes.MAIN_PAGE),  // Navigate to MAIN_PAGE on Ok
                    onTap2: () => Get.toNamed(Routes.PROFILE_FROM_PAGE),  // Navigate to PROFILE_FROM_PAGE on Cancel
                    isSuccess: true,  // Success flag for the dialog
                    lotiImg: StaticImg.editLoti,  // Lottie animation for the dialog
                  );
                },
                title: StaticString.signIn,  // Button title
              ),

              SizedBox(height: 15.h),  // Vertical spacing

              // -----------------------------'OR' Text--------------------------
              Text(
                StaticString.or,  // Text for 'OR'
                style: StaticStyle.style(
                  16.sp,  // Font size with screen scaling
                  StaticColors.grayColor,  // Text color for 'OR'
                  FontWeight.w400,  // Regular font weight
                ),
              ),
              SizedBox(height: 5.h),  // Vertical spacing

              // -----------------------------'Sign In With' Text--------------------------
              Text(
                StaticString.signWith,  // Text for 'Sign in with'
                style: StaticStyle.style(
                  14.sp,  // Font size with screen scaling
                  StaticColors.grayColor,  // Text color for 'Sign in with'
                  FontWeight.w400,  // Regular font weight
                ),
              ),
              SizedBox(height: 15.h),  // Vertical spacing

              // ----------------------------Social Media Login Options (Google, Apple)--------------
              LinkIcon(),  // Custom widget for social login icons (Google, Apple)
            ],
          ),
        ),
      ),
    );
  }
}
