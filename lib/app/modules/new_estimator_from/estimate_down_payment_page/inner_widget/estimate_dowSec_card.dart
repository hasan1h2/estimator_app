import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class EstimateDowsecCard extends StatelessWidget {
  const EstimateDowsecCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;
    return Container(
      width: screenWidth,
      height: 105.h,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        borderRadius: BorderRadius.circular(11.r),
        border: Border.all(
          color: Color(StaticColors.grayColor),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Image.asset(StaticImg.car1),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceAround,
            children: [
              Text(
                StaticString.newEst,
                style: StaticStyle.style(
                  18,
                  StaticColors.textPrColor,
                  FontWeight.w600,
                ),
              ),
              Text(
                StaticString.basXteWash,
                style: StaticStyle.style(
                  13,
                  StaticColors.textPrColor,
                  FontWeight.w500,
                ),
              ),
              Text(
                StaticString.quantity,
                style: StaticStyle.style(
                  12,
                  StaticColors.textPrColor,
                  FontWeight.w400,
                ),
              ),
            ],
          ),

          SizedBox(width: 45.w),
          Column(
            crossAxisAlignment: .end,
            mainAxisAlignment: .spaceAround,
            children: [
              SvgPicture.asset(StaticImg.delete),
              Text(
                "\$400.00",
                style: StaticStyle.style(
                  16,
                  StaticColors.textPrColor,
                  FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
