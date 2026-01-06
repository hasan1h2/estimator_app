import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class UseGuideOp extends StatelessWidget {
  const UseGuideOp({super.key, required this.opNumber, required this.opTitle, required this.opSubTitle});
  final int  opNumber;
  final String  opTitle;
  final String  opSubTitle;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 18,
          backgroundColor: Color(0XFFCCFBF1),
          child: Text(opNumber.toString()),
        ).paddingOnly(bottom: 30),
        SizedBox(width: 10.w,),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              opTitle,
              style: StaticStyle.style(
                14.sp,
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
            ),
            Text(
              opSubTitle,
              style: StaticStyle.style(
                12.sp,
                StaticColors.textPrColor,
                FontWeight.w400,
              ),
            ),
          ],
        ),



      ],
    ).paddingSymmetric(horizontal: 10);
  }
}
