import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/utils/static_colors/static_colors.dart';
import '../custom_button/custom_button.dart';

class AddBtn extends StatelessWidget {
  const AddBtn({
    super.key,
    required this.onTap1,
    required this.onTap2,
    required this.fastBtnTitle,
    required this.secBtnTitle,
  });
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  final String fastBtnTitle;
  final String secBtnTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            borderWidth: 1.w,
            isUploadBtn: true,
            borderColor: StaticColors.btnFoColor,
            borderRadius: 10.r,
            bgColor: StaticColors.whiteColor,
            fColor: StaticColors.grayColor1,
            onTap: onTap1,
            title: fastBtnTitle,
            fSize: 16.sp,
            fWight: FontWeight.w500,
            height: 48.h, // Responsive height
            width: 197.w,
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: CustomButton(
            width: 197.w,
            borderColor: StaticColors.grayColor,
            borderRadius: 10.r,
            bgColor: StaticColors.btnColor,
            fColor: StaticColors.whiteColor,
            onTap: onTap2,
            title: secBtnTitle,
            fSize: 16.sp,
            fWight: FontWeight.w500,
            height: 48.h, // Responsive height
          ),
        ),
      ],
    );
  }
}
