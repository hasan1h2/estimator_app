import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from/custom_text_from.dart';
import '../controllers/sin_in_page_controller.dart';

class From extends GetView<SinInPageController> {
  const From({super.key, });

  @override
  Widget build(BuildContext context) {
    // SinInPageController controller = Get.find<SinInPageController>();
    // final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Add formKe
    return Column(children: [
      CustomTextFrom(
        validator: (value) => controller.validateEmail(value!),
        mainController: controller.email.value,
        hintText: StaticString.email,
        suffixIcon: Icons.email,
        iconColor: StaticColors.grayColor,
        borderColor: StaticColors.grayColor,
        borderWidth: 1,
      ),
      SizedBox(height: 15.h,),
      Obx(
            () => CustomTextFrom(
              validator: (value) => controller.validatePassword(value!),
              mainController: controller.pass.value,
              hintText: StaticString.pass,
              suffixIcon: Icons.lock,
              iconColor: StaticColors.grayColor,
              borderColor: StaticColors.grayColor,
              isPass: true,
              borderWidth: 1,
              controller: controller,
              obscureText: controller.isObscure.value,
            ),
      ),
    ],);
  }
}
