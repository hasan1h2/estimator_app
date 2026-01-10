import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../data/utils/static_colors/static_colors.dart';
import '../../../../../data/utils/static_img/static_img.dart';
import '../../../../../data/utils/static_style/staticstyle.dart';
import '../dialog_box_area_edit/dialog_box_area_edit.dart';

class AreaSection extends StatelessWidget {
  const AreaSection({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: .start,
      children: [
        Expanded(
            child: Obx(() => Container(
              width: 335.w,
              height: 45.h,
              decoration: BoxDecoration(
                color: Color(StaticColors.itemBgColor1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(controller.value1.value,style: StaticStyle.style(
                  15,
                  StaticColors.whiteColor,
                  FontWeight.w600,
                ),),
              ),
            ),)
        ),
        SizedBox(width: 8.w),
        GestureDetector(
          onTap: () {
            // ===============================DialogBoxAreaEdit===================
            Get.dialog(DialogBoxAreaEdit());
          },
          child: Container(
            padding: EdgeInsets.all(8),
            height: 35.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Color(StaticColors.whiteColor),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.r),
                topRight: Radius.circular(6.r),
              ),
              border: Border.all(
                color: Color(StaticColors.grayColor),
              ),
            ),
            child: SvgPicture.asset(StaticImg.edit),
          ),
        ),
      ],
    );
  }
}
