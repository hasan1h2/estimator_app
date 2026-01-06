import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from/custom_text_from.dart';
import '../controllers/sin_up_page_controller.dart';

class SignUpForm extends StatelessWidget {
  final SinUpPageController controller = Get.put(SinUpPageController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Add formKey

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name Field with validation
        CustomTextFrom(
          validator: (value) => controller.validateName(value!),
          mainController: controller.nameN.value,
          hintText: StaticString.name,
          suffixIcon: Icons.person,
          iconColor: StaticColors.grayColor,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
        ),
        SizedBox(height: 10.h),
        // Email Field with validation
        CustomTextFrom(
          validator: (value) => controller.validateEmail(value!),
          mainController: controller.email.value,
          hintText: StaticString.email,
          suffixIcon: Icons.email,
          iconColor: StaticColors.grayColor,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
        ),
        SizedBox(height: 10.h),
        // Password Field with validation
        Obx(
          () => CustomTextFrom(
            validator: (value) => controller.validatePassword(value!),
            mainController: controller.pass.value,
            hintText: StaticString.pass,
            suffixIcon: Icons.lock,
            iconColor: StaticColors.grayColor,
            borderColor: StaticColors.grayColor,
            isPass: true,
            obscureText: controller.isObscure.value,
            borderWidth: 1,
            controller: controller,
          ),
        ),
        SizedBox(height: 10.h),
        // Confirm Password Field with validation
        Obx(
          () => CustomTextFrom(
            validator: (value) => controller.validateConfirmPassword(value!),
            mainController: controller.conPass.value,
            hintText: StaticString.cPass,
            suffixIcon: Icons.lock_open,
            iconColor: StaticColors.grayColor,
            borderColor: StaticColors.grayColor,
            isPass: true,
            obscureText: controller.isObscureConPass.value,
            borderWidth: 1,
            isConPass: true,
            controller: controller,
          ),
        ),

        SizedBox(height: 50),
      ],
    );
  }
}
