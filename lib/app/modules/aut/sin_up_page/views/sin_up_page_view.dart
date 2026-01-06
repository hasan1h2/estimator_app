import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../controllers/sin_up_page_controller.dart';
import '../inner_widget/from.dart';
class SinUpPageView extends GetView<SinUpPageController> {
  const SinUpPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  // ---------------------signUp----Text---------------
                  Padding(
                    padding: EdgeInsets.only(top: 110, bottom: 50),
                    child: Center(
                      child: Text(
                        StaticString.signUp,
                        style: StaticStyle.style(
                          24,
                          StaticColors.textSeColor,
                          FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  // -------------------------From--------------
                  SignUpForm(),
                  SizedBox(height: 50.h),
                  // -------------------------------signUpButton---------------------
                  CustomButton(
                    bgColor: StaticColors.btnColor,
                    fColor: StaticColors.whiteColor,
                    onTap: controller.saveOnTap,
                    title: StaticString.signUp,
                  ),
                  // -----------------------------Sub Text--------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StaticString.alAccount,
                        style: StaticStyle.style(
                          14,
                          StaticColors.grayColor,
                          FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.SIN_IN_PAGE),
                        child: Text(
                          StaticString.signAccount,
                          style: StaticStyle.style(
                            14,
                            StaticColors.linkTextColor,
                            FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

