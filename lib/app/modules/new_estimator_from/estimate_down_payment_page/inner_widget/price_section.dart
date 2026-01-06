import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 76.h,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withAlpha(10),
            offset: Offset(0, 2),
            spreadRadius: -3,
            blurRadius: 11.2,
          ),
        ],
      ),
      child: ListTile(
        leading: Text(
          StaticString.estiTotal,
          style: StaticStyle.style(
            16.sp,
            StaticColors.textPrColor,
            FontWeight.w500,
          ),
        ),
        trailing:Text(
          "\$800.00",
          style: StaticStyle.style(
            25.sp,
            StaticColors.itemBgColor1,
            FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
