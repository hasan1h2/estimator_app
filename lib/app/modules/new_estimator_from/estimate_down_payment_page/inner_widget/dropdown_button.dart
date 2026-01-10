import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/dropdownButton/customform_gets.dart';

class DropdownBtnDiscount extends StatelessWidget {
  const DropdownBtnDiscount({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;

    return Obx(
          () => CustomDropdownButton2(
            buttonHeight: 68.h,
                  iconSize: 20,
                  hint: StaticString.emHint,
                  buttonWidth: screenWidth,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  buttonPadding: EdgeInsets.symmetric(
          horizontal: 20,
                  ),
                  buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(StaticColors.whiteColor),
          border: Border.all(
            color: Color(StaticColors.grayColor),
            width: 1,
          ),
                  ),
                  dropdownWidth: 200.w,
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
                  ),
                  value: controller.selectedValue.value.isNotEmpty
            ? controller.selectedValue.value
            : controller
            .dropdownItems[0], // Set default value
                  dropdownItems: controller.dropdownItems,
                  onChanged: (String? value) {
          controller.selectedValue.value = value ?? '';
                  },
                ),
    );
  }
}
