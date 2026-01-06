import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom-sech_box/custom_sech_box.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/new_estimate_add_page_controller.dart';

class NewEstimateFrom extends GetView<NewEstimateAddPageController> {
  const NewEstimateFrom({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(StaticColors.whiteColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StaticString.cusDetails,
                    style: StaticStyle.style(
                      18,
                      StaticColors.textPrColor,
                      FontWeight.w600,
                    ),
                  ),
                  // Removed Nested Expanded
                  Expanded(
                    child: Container(
                      height: 23.h, // Height constraint
                      margin: EdgeInsets.only(left: 20),
                      child: CustomSechBox(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: CustomTeFromBo(
                      mainController: controller.fName.value,
                      validator: (value) =>
                          controller.validateNotEmpty(value, "Fast Name"),
                      hintText: StaticString.fNameHint,
                      borderColor: StaticColors.grayColor,
                      borderWidth: 1,
                      fillColor: StaticColors.whiteColor,
                      borderRadius: 10,
                      lableText: StaticString.fName,
                      crossAxi: CrossAxisAlignment.start,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: CustomTeFromBo(
                      mainController: controller.lName.value,
                      validator: (value) =>
                          controller.validateNotEmpty(value, "Last Name"),
                      hintText: StaticString.lNameHint,
                      borderColor: StaticColors.grayColor,
                      borderWidth: 1,
                      fillColor: StaticColors.whiteColor,
                      borderRadius: 10,
                      lableText: StaticString.lName,
                      crossAxi: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              CustomTeFromBo(
                mainController: controller.email.value,
                validator: (value) => controller.validateEmail(value),
                hintText: StaticString.emHint,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.email,
                crossAxi: CrossAxisAlignment.start,
              ),
              SizedBox(height: 12.h),
              CustomTeFromBo(
                mainController: controller.phoneNum.value,
                validator: (value) =>
                    controller.validateNotEmpty(value, 'Phone Number'),
                hintText: StaticString.phHint,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.phNumber,
                crossAxi: CrossAxisAlignment.start,
              ),
              SizedBox(height: 12.h),
              CustomTeFromBo(
                mainController: controller.address.value,
                validator: (value) =>
                    controller.validateNotEmpty(value, 'Adress'),
                hintText: StaticString.addressFHint,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.addressF,
                crossAxi: CrossAxisAlignment.start,
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: CustomTeFromBo(
                      mainController: controller.city.value,
                      validator: (value) =>
                          controller.validateNotEmpty(value, 'City'),
                      hintText: StaticString.city,
                      borderColor: StaticColors.grayColor,
                      borderWidth: 1,
                      fillColor: StaticColors.whiteColor,
                      borderRadius: 10,
                      lableText: StaticString.city,
                      crossAxi: CrossAxisAlignment.start,
                    ),
                  ),
                  SizedBox(width: 12.h),
                  Expanded(
                    child: CustomTeFromBo(
                      mainController: controller.state.value,
                      validator: (value) =>
                          controller.validateNotEmpty(value, 'State'),
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
              CustomTeFromBo(
                mainController: controller.zip.value,
                validator: (value) => controller.validateNotEmpty(value, 'Zip'),
                hintText: StaticString.zCod,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.zCode,
                crossAxi: CrossAxisAlignment.start,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                bgColor: StaticColors.btnColor,
                fColor: StaticColors.whiteColor,
                onTap: () {
                  bool valid = controller.saveOnTap();
                  valid
                      ? ShowDialog.showCustomDialog(
                          context,
                          heading:'Successfully completed' ,
                          fBtnTitle:'Back',
                          seBtnTitle:'Next',
                          onTap1: () => Get.back(),
                          onTap2: () => Get.toNamed(Routes.ESTIMATE_ADD_ITEM1_PAGE),
                          isSuccess: true,
                        )
                      : null;
                },
                title: StaticString.sComBtn,
                height: 48,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                bgColor: StaticColors.whiteColor,
                fColor: StaticColors.grayColor,
                onTap: () {
                  Get.toNamed(Routes.MAIN_PAGE);
                },
                title: StaticString.continueWithout,
                height: 48,
                borderColor: StaticColors.grayColor1,
                isUploadBtn: true,
                borderWidth: 1,
                borderRadius: 7,
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
