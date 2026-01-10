import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../../../global_widget/dropdownButton/customform_gets.dart';
import '../../add_proservice_parent_page/controllers/add_proservice_parent_page_controller.dart';

class TextFrom extends GetView<AddProserviceParentPageController> {
  const TextFrom({super.key, this.isParent = false});
  final bool isParent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Parent Service Dropdown (only for parent service)
        isParent?
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 70.h,
            child: Obx(
                  () => CustomDropdownButton2(
                hint: StaticString.emHint,
                buttonWidth: MediaQuery.of(context).size.width,
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                buttonPadding: EdgeInsets.symmetric(horizontal: 20),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(StaticColors.whiteColor),
                  border: Border.all(
                    color: Color(StaticColors.grayColor),
                    width: 1.w,
                  ),
                ),
                dropdownWidth: 320.w,
                dropdownPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                dropdownDecoration: BoxDecoration(
                  color: Color(StaticColors.whiteColor),
                  border: Border.all(
                    color: Color(StaticColors.grayColor),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),iconSize: 30,
                // Directly use List<String> for dropdownItems
                value: controller.selectedServiceProduct.value.isNotEmpty
                    ? controller.selectedServiceProduct.value
                    : controller.subServiceProduct[0], // Default value
                dropdownItems: controller.subServiceProduct, // List<String>
                onChanged: (String? value) {
                  controller.selectedServiceProduct.value = value ?? '';
                },
              ),
            ),
          ): CustomTeFromBo(
          hintText: StaticString.addMaFormHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.serviceTitle,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13),

        // If Parent, show Sub Service Form
        isParent?CustomTeFromBo(
          hintText: StaticString.addMaFormHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.parentSubSer,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13):SizedBox(),


        // Description Field
        CustomTeFromBo(
          maxLines: 4,
          hintText: StaticString.addMaFormDescHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.addMaFormDesc,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13),

        // Price Field
        CustomTeFromBo(
          hintText: "0.00",
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.addMaFormPrice,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13),
      ],
    );
  }
}
