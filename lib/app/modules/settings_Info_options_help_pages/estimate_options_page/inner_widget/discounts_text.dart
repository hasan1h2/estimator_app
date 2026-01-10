import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class DiscountsText extends StatelessWidget {
  const DiscountsText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          StaticString.presetDisco,
          style: StaticStyle.style(
            18.sp,
            StaticColors.textPrColor,
            FontWeight.w500,
          ),
        ), Row(
          children: [
            SvgPicture.asset(StaticImg.add,width: 22.w,),SizedBox(width: 10.w,),
            Text(
              StaticString.add,
              style: StaticStyle.style(
                18.sp,
                StaticColors.newPrColor,
                FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    ).paddingSymmetric(vertical: 12,horizontal: 20);
  }
}
