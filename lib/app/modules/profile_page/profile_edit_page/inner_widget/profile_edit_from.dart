import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../../profile_main_page/controllers/profile_main_page_controller.dart';

class ProfileEditFrom extends GetView<ProfileMainPageController> {
  const ProfileEditFrom({
    super.key,
    required this.comName,
    required this.phoneNumber,
    required this.emailAdd,
    required this.webSite,
    required this.comAdd,
  });

  final String comName;
  final String phoneNumber;
  final String emailAdd;
  final String webSite;
  final String comAdd;

  @override
  Widget build(BuildContext context) {
    // Initializing the controllers with values from the passed arguments
    controller.comNameCtrl.value.text = comName;
    controller.phoneNumCtrl.value.text = phoneNumber;
    controller.emailCtrl.value.text = emailAdd;
    controller.webSiteCtrl.value.text = webSite;
    controller.addressCtrl.value.text = comAdd;

    return Column(
      children: [
        CustomTeFromBo(
          mainController: controller.comNameCtrl.value,
          hintText: StaticString.comHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comName,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10),
        CustomTeFromBo(

          mainController: controller.phoneNumCtrl.value,
          hintText: StaticString.phHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.phNumber,
          crossAxi: CrossAxisAlignment.start,isImprotent: false,
        ),
        SizedBox(height: 10),
        CustomTeFromBo(

          mainController: controller.emailCtrl.value,
          readOnly: true, // Email field is read-only
          hintText: StaticString.emHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.emAdd,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10),
        CustomTeFromBo(

          mainController: controller.webSiteCtrl.value,
          hintText: StaticString.webHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.webSit,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10),
        CustomTeFromBo(
          mainController: controller.addressCtrl.value,
          hintText: StaticString.comAddHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comAdd,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
