import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
class EditFrom extends StatelessWidget {
  const EditFrom({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTeFromBo(
          lableText: StaticString.comName,
          hintText: StaticString.comHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10.h),
        CustomTeFromBo(
          lableText: StaticString.phNumber,
          hintText: StaticString.phHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10.h),
        CustomTeFromBo(
          lableText: StaticString.emAdd,
          hintText: StaticString.emHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10.h),
        CustomTeFromBo(
          lableText: StaticString.webSit,
          hintText: StaticString.webHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10.h),
        CustomTeFromBo(
          lableText: StaticString.comAdd,
          hintText: StaticString.comAddHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10.h),
        CustomTeFromBo(
          lableText: StaticString.comAdd2,
          hintText: StaticString.comAddHint2,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: CustomTeFromBo(
                lableText: StaticString.city,
                hintText: StaticString.city,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: CustomTeFromBo(

                lableText: StaticString.state,
                hintText: StaticString.state,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: CustomTeFromBo(
                lableText: StaticString.zCode,
                hintText: StaticString.zCod,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
