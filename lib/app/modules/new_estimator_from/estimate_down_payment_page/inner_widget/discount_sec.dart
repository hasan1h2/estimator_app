import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import 'dropdown_button.dart';

class DiscountSec extends StatelessWidget {
  const DiscountSec({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: DropdownBtnDiscount(
            controller: controller,
          ),
        ),
        FittedBox(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(15),
            width: 90.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: Color(StaticColors.whiteColor),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(StaticColors.grayColor),
                width: 1.r,
              ),
            ),
            child: Text(
              "%",
              textAlign: .end,
              style: StaticStyle.style(
                14.sp,
                StaticColors.textSeColor,
                FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
