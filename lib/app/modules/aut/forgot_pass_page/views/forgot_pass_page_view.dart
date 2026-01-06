import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from/custom_text_from.dart';
import '../../sin_in_page/controllers/sin_in_page_controller.dart';
import '../controllers/forgot_pass_page_controller.dart';

class ForgotPassPageView extends GetView<SinInPageController> {
  const ForgotPassPageView({super.key});
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
                // ---------------------Forgot Password----Text---------------
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    StaticString.forPassHa,
                    style: StaticStyle.style(
                      24,
                      StaticColors.textSeColor,
                      FontWeight.w600,
                    ),
                  ),
                ),
                // -----------------------------Sub Text--------------------------
                Padding(
                  padding: EdgeInsets.only(left: 75, right: 75,top: 14,),
                  child: Text(
                    StaticString.forPassSub,textAlign: TextAlign.center,
                    style: StaticStyle.style(
                      14,
                      StaticColors.grayColor,
                      FontWeight.w400,
                    ),
                  ),
                ),
                // -------------------------From--------------
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                  child: CustomTextFrom(
                    validator: (value) => controller.validateEmail(value),
                    mainController: controller.email.value,
                    hintText: StaticString.email,
                    suffixIcon: Icons.email,
                    iconColor: StaticColors.grayColor,
                    borderColor: StaticColors.grayColor,
                    borderWidth: 1,
                  ),
                ),
                // -------------------------------Forgot Password Button---------------------
                CustomButton(
                  bgColor: StaticColors.btnColor,
                  fColor: StaticColors.whiteColor,
                  onTap: () {
                    bool valid=controller.saveOnTap();
                    valid?Get.toNamed(Routes.VERIFI_PAGE ):null;
                  } ,
                  title: StaticString.rePass,
                ),
              ],
            ),)
          ),
        ),
      ),
    );
  }
}
