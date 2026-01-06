import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class TermsServiceDec extends StatelessWidget {
  const TermsServiceDec({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            title,
            style: StaticStyle.style(
              11.9,
              StaticColors.textPrColor,
              FontWeight.w600,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            subTitle,
            style: StaticStyle.style(
              11.9,
              StaticColors.textSeColor,
              FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
