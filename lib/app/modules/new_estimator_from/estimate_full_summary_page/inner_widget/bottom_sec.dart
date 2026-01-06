import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
class BottomSec extends StatelessWidget {
  const BottomSec({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: .end,
      mainAxisAlignment: .spaceAround,
      children: [
        Row(
          children: [
            SvgPicture.asset(StaticImg.print,width: 18,height: 18,),
            SizedBox(width: 10.w,),
            Text(
              "Print",
              style: StaticStyle.style(
                11.9.sp,
                StaticColors.textPrColor,
                FontWeight.w500,
              ),
            )
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(StaticImg.save1,width: 18,height: 18,),
            SizedBox(width: 10.w,),
            Text(
              "Save",
              style: StaticStyle.style(
                11.9.sp,
                StaticColors.textPrColor,
                FontWeight.w500,
              ),
            )
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(StaticImg.share,width: 18,height: 18,),
            SizedBox(width: 10                 .w,),
            Text(
              "Share",
              style: StaticStyle.style(
                11.9.sp,
                StaticColors.textPrColor,
                FontWeight.w500,
              ),
            )
          ],
        ),

      ],
    ).marginSymmetric(vertical: 20);
  }
}
