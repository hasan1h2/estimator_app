import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import 'use_guide_op.dart';
class UseGuideMain extends StatelessWidget {
  const UseGuideMain({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 350.h,
      width: 392.w,
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(StaticColors.grayColor),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                StaticImg.book,
              ).paddingOnly(right: 5.w, left: 15.w),
              FittedBox(
                child: Text(
                  StaticString.contCusService,
                  style: StaticStyle.style(
                    13.3.sp,
                    StaticColors.textPrColor,
                    FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.builder(
              itemCount: StaticString.UseGuideval.length,
              itemBuilder: (context, index) => UseGuideOp(
                opNumber: index + 1,
                opTitle: StaticString.UseGuideval[index]["title"],
                opSubTitle:
                StaticString.UseGuideval[index]["subtitle"],
              ).marginOnly(bottom: 20),
            ),
          ),
        ],
      ),
    );
  }
}
