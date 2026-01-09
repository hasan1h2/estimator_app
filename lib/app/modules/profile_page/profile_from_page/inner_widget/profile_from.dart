import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
<<<<<<< HEAD
import '../../profile_main_page/controllers/profile_main_page_controller.dart';
class ProfileFrom extends GetView<ProfileMainPageController> {
=======
class ProfileFrom extends StatelessWidget {
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
  const ProfileFrom({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
<<<<<<< HEAD
        CustomTeFromBo(
          // onChanged: (value) {
          //   controller.comNameVal.value = value; // Updating the reactive variable
          // },
          validator: (value) => controller.validateNotEmpty(value, 'Company name'),
          mainController: controller.comNameCtrl.value,
=======
        CustomTeFromBo(                                
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.comHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comName,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
<<<<<<< HEAD
          // onChanged: (value) {
          //   controller.phoneNumVal.value = value;
          // },
          validator: (value) => controller.validateNotEmpty(value, 'Phone number'),
          mainController: controller.phoneNumCtrl.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.phHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.phNumber,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
<<<<<<< HEAD
          // onChanged: (value) {
          //   controller.emailVal.value = value;
          // },
          validator: (value) => controller.validateEmail(value,),
          mainController: controller.emailCtrl.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.emHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.emAdd,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
<<<<<<< HEAD
          // onChanged: (value) {
          //   controller.webSiteVal.value = value;
          // },
          validator: (value) => controller.validateNotEmpty(value, 'Web Site'),
          mainController: controller.webSiteCtrl.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.webHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.webSit,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
<<<<<<< HEAD
          // onChanged: (value) {
          //   controller.addressVal.value = value;
          // },
          validator: (value) => controller.validateNotEmpty(value, 'Adress'),
          mainController: controller.addressCtrl.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.comAddHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comAdd,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
<<<<<<< HEAD
          mainController: controller.addressCtrl2.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.comAddHint2,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comAdd2,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: CustomTeFromBo(
<<<<<<< HEAD
                validator: (value) => controller.validateNotEmpty(value, 'City'),
                mainController: controller.cityCtrl.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                hintText: StaticString.city,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.city,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomTeFromBo(
<<<<<<< HEAD
                validator: (value) => controller.validateNotEmpty(value, 'State'),
                mainController: controller.stateCtrl.value,
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                hintText: StaticString.state,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.state,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        CustomTeFromBo(
<<<<<<< HEAD
          mainController: controller.zipCtrl.value,
          validator: (value) => controller.validateNotEmpty(value, 'Zip'),
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          hintText: StaticString.zCod,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.zCode,
          crossAxi: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}
