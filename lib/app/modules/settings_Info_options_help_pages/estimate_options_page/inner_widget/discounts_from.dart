import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../../../global_widget/dropdownButton/customform_gets.dart';

class DiscountsFrom extends StatelessWidget {
  const DiscountsFrom({super.key, this.controller, required this.discountsTitle});
  final dynamic controller;
  final String discountsTitle ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 392.w,
      child: Row(
        children: [


          // ==============================Milltay box============
          Container(
            padding:EdgeInsets.only(left: 10),
            width: 192.w,
            height: 70.h,alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(StaticColors.whiteColor),
              borderRadius: BorderRadius.circular(6).w,
              border: Border.all(
                color: Color(StaticColors.grayColor),
                width: 1.w,
              ),
            ),
            child: FittedBox(
              child: Text(
                discountsTitle,
                textAlign: TextAlign.start,
                style: StaticStyle.style(
                  18.sp,
                  StaticColors.textPrColor,
                  FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(width: 5.w),
             SizedBox(
              width: 70.w,
              height: 70,
              child: CustomTeFromBo(
                isLableText: true,
                mainController: controller.dis,
                hintText: "0",
                borderColor: StaticColors.grayColor,
                borderWidth: 1.r,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10.r,
                crossAxi: CrossAxisAlignment.start,
              ),
            ).paddingOnly(top: 14),
          SizedBox(width: 5.w),
          Obx(
              () => CustomDropdownButton2(
                buttonHeight: 68.h,
                hint: StaticString.emHint,
                buttonWidth: 75.w,
                icon: Icon(Icons.keyboard_arrow_down_outlined),
                buttonPadding: EdgeInsets.symmetric(horizontal: 20.r),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(StaticColors.whiteColor),
                  border: Border.all(
                    color: Color(StaticColors.grayColor),
                    width: 1,
                  ),
                ),
                dropdownWidth: 60.w,
                dropdownPadding: EdgeInsets.symmetric(
                  horizontal: 10.r,
                  vertical: 10.r,
                ),
                dropdownDecoration: BoxDecoration(
                  color: Color(StaticColors.whiteColor),
                  border: Border.all(
                    color: Color(StaticColors.grayColor),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                value: controller.selectedValue.value.isNotEmpty
                    ? controller.selectedValue.value
                    : controller.dropdownItems[0], // Set default value
                dropdownItems: controller.dropdownItems,
                onChanged: (String? value) {
                  controller.selectedValue.value = value ?? '';
                  print(
                    "${controller.selectedValue.value} ${controller.dis.toString()}",
                  );
                },
              ),
            ),
          SizedBox(width: 25.w),

          SvgPicture.asset(
            StaticImg.delete,
            width: 22.w,
            height: 22.h,
          ),
        ],
      ),
    );
  }
}
