import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.rightTitle,
    required this.leftTitle,
    required this.onTap,
  });
  final String rightTitle;
  final IconData leftTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.r),
      width: MediaQuery.of(context).size.width,
      height: 80.h,
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        border: Border.all(color: Color(StaticColors.grayColor), width: 1.w),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          FittedBox(
            child: Text(
              rightTitle,
              style: StaticStyle.style(
                16.sp    ,
                StaticColors.greyNormal,
                FontWeight.w500,
              ),
            ),
          ),
          InkWell(
            onTap: onTap,
              child: Icon(leftTitle)),
        ],
      ),
    );
  }
}
//