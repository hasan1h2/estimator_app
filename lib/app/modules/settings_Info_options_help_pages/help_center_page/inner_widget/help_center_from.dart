import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
class HelpCenterFrom extends StatelessWidget {
  const HelpCenterFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(StaticImg.email).paddingOnly(right: 5),
            Text(
              StaticString.contCusService,
              style: StaticStyle.style(
                17.3.sp,
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h,),
        // =======================Help Center From=============
        CustomTeFromBo(
          hintText: StaticString.yourEmail,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,isLableText: true,
        ).paddingOnly(bottom: 16),
        CustomTeFromBo(
          maxLines: 3,
          hintText: StaticString.describe,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,isLableText: true,
        ),

      ],
    );
  }
}
