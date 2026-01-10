import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class EstimateTopBgOp extends StatelessWidget {
  const EstimateTopBgOp({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 30),
      height: 140.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(StaticColors.itemBgColor1),
      ),
      child: Center(
        child: Text(
          title,
          style: StaticStyle.style(
            24.sp,
            StaticColors.whiteColor,
            FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
