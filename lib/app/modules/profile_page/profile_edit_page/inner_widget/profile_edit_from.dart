import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
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
    return Column(
      children: [
        CustomTeFromBo(
          initialValue: comName,
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
          initialValue: phoneNumber,
          mainController: controller.phoneNumCtrl.value,
          hintText: StaticString.phHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.phNumber,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10),
        CustomTeFromBo(
          initialValue: emailAdd,
          mainController: controller.emailCtrl.value,
          readOnly: true,
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
          initialValue: webSite,
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
          initialValue: comAdd,
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
