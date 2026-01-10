import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../data/utils/static_colors/static_colors.dart';
import '../../../../../data/utils/static_string/static_string.dart';
import '../../../../../data/utils/static_style/staticstyle.dart';
import '../dropdown_button1/dropdown_button1.dart';

class SubServicePro extends StatelessWidget {
  const SubServicePro({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            StaticString.subServicePro,
            style: StaticStyle.style(
              16.sp,
              StaticColors.textPrColor,
              FontWeight.w500,
            ),
          ),
          SizedBox(height: 15.h),
          DropdownButton1(controller: controller),
        ],
      ),
    );
  }
}
