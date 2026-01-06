import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../controllers/customer_man_from_page_controller.dart';
class CustomarFrom extends GetView<CustomerManFromPageController> {
  const CustomarFrom({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTeFromBo(
                validator: (value) => controller.validateNotEmpty(value, 'First name'),
                mainController: controller.fName.value,
                maxLines: 1,
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
                validator: (value) => controller.validateNotEmpty(value, 'Last name'),
                mainController: controller.lName.value,
                maxLines: 1,
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
          validator: (value) => controller.validateEmail(value,),
          mainController: controller.email.value,
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
          validator: (value) => controller.validateNotEmpty(value, 'Phone number'),
          mainController: controller.phoneNum.value,
          hintText: StaticString.phHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.phoneF,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 12.h),
        CustomTeFromBo(
          validator: (value) => controller.validateNotEmpty(value, 'Address'),
          mainController: controller.address.value,
          hintText: StaticString.comAddHint,
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
                validator: (value) => controller.validateNotEmpty(value, 'City'),
                mainController: controller.city.value,
                maxLines: 1,
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
                validator: (value) => controller.validateNotEmpty(value, 'State'),
                mainController: controller.state.value,
                maxLines: 1,
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
        SizedBox(height: 12.h),
        CustomTeFromBo(
          validator: (value) => controller.validateNotEmpty(value, 'Zip code'),
          mainController: controller.zip.value,
          maxLines: 1,
          hintText: StaticString.zCod,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.zCode,
          crossAxi: CrossAxisAlignment.start,
        ),
      ],
    ));
  }
}
