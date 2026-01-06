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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                // ---------------------img------------
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    left: 51,
                    right: 50,
                    top: 170,
                    bottom: 50,
                  ),
                  child: Image.asset(StaticImg.sploginba),
                ),
            
                // -------------------CustomButton--------SinUp------------
                CustomButton(
                  bgColor: StaticColors.btnColor,
                  fColor: StaticColors.whiteColor,
                  onTap: () => Get.toNamed(Routes.SIN_UP_PAGE),
                  title: StaticString.signUp,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    StaticString.or,
                    style: StaticStyle.style(
                      16,
                      StaticColors.grayColor,
                      FontWeight.w400,
                    ),
                  ),
                ),
                // -------------------CustomButton--Google------------------
                CustomButton(
                  bgColor: StaticColors.whiteColor,
                  fColor: StaticColors.textSeColor,
                  onTap: () {},
                  title: StaticString.gAccount,
                  height: 42,
                  fWight: FontWeight.w400,
                  isLeftIcon: true,
                  borderRadius: 12,
                  leftIcon: StaticImg.google,
                isIconColor: true,
                ),
                SizedBox(height: 17),
            
                // -------------------CustomButton--Apple------------------
            
            
                CustomButton(
                  bgColor: StaticColors.whiteColor,
                  fColor: StaticColors.textSeColor,
                  onTap: () {},
                  title: StaticString.apAccount,
                  height: 42,
                  fWight: FontWeight.w400,
                  isLeftIcon: true,
                  borderRadius: 12,
                  leftIcon: StaticImg.apple,
                  isIconColor: true,
                ).marginOnly(bottom: 30.w),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
