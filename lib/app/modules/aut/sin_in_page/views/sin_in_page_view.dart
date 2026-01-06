import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../controllers/sin_in_page_controller.dart';
import '../inner_widget/from.dart';
import '../inner_widget/link_icon.dart';

class SinInPageView extends GetView<SinInPageController> {
  const SinInPageView({super.key});
  @override
  Widget build(BuildContext context) {
    // SinInPageController controller = Get.find<SinInPageController>();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                children: [
                  // ---------------------signIn----Text---------------
                  Padding(
                    padding: EdgeInsets.only(top: 119, bottom: 100),
                    child: Center(
                      child: Text(
                        StaticString.signIn,
                        style: StaticStyle.style(
                          24,
                          StaticColors.textSeColor,
                          FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  // -------------------------From--------------
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: From(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Get.toNamed(Routes.FORGOT_PASS_PAGE,),
                        child: Text(StaticString.forPass),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  // -------------------------------signInButton---------------------
                  CustomButton(
                    bgColor: StaticColors.btnColor,
                    fColor: StaticColors.whiteColor,
                      onTap:() {
                        bool valid =controller.saveOnTap();
                        valid?Get.toNamed(Routes.SUCCESS_PAGE):null;
                      },
                    title: StaticString.signIn,
                  ),

                  SizedBox(height: 15.h),
                  // -----------------------------Sub Text--------------------------
                  Text(
                    StaticString.or,
                    style: StaticStyle.style(
                      16,
                      StaticColors.grayColor,
                      FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  // -----------------------------Sub Text--------------------------
                  Text(
                    StaticString.signWith,
                    style: StaticStyle.style(
                      14,
                      StaticColors.grayColor,
                      FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  // -----------------------------------LinkIcon-----Google Appple--------------
                  LinkIcon(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
