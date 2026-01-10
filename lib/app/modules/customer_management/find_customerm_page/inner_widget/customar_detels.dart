import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class CustomarDetels extends StatelessWidget {
  const CustomarDetels({super.key, required this.index, this.controller});
  final int index;
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        index == 0
            ? SizedBox()
            : SvgPicture.asset(
                controller.customerDet[index]["icon"],
                width: 16.w,
                height: 16.h,
              ),
        index == 0 ? SizedBox() : SizedBox(width: 5.w),
        Text(
          controller.customerDet[index]["title"],
          style: StaticStyle.style(
            index == 0 ? 22.sp : 16.sp,
            index == 0 ? StaticColors.textPrColor : StaticColors.textSeColor,
            FontWeight.w500,
          ),
        ).marginSymmetric(vertical: 3),
      ],
    );
  }
}
