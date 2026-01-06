import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import 'describe_from.dart';

class EstimateOpFrom extends StatelessWidget {
  const EstimateOpFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        CustomTeFromBo (
          lableText: StaticString.defDownPay,
          hintText: "30",
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        Text(
          StaticString.defDownPayHint,
          style: StaticStyle.style(
            10.3.sp,
            StaticColors.grayColor,
            FontWeight.w400,
          ),
        ),
        SizedBox(height: 10.h),
        CustomTeFromBo(
          lableText: StaticString.salesTax,
          hintText: "0",
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        Text(
          StaticString.salesTaxHint,
          style: StaticStyle.style(
            10.3.sp,
            StaticColors.grayColor,
            FontWeight.w400,
          ),
        ),
        SizedBox(height: 10.h),
// ==========================DescribeFrom=================
        DescribeFrom(
          lableTitle: StaticString.estiDisclaimer,
          lableTitleHint: "",
          maxLines: 3,
        ),
        DescribeFrom(
          lableTitle: StaticString.estiFooterText,
          lableTitleHint: StaticString.estiFooterTextHint,
          maxLines: 2,
        ),
      ],
    );
  }
}
