import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
class QuantityPriceSec extends StatelessWidget {
  const QuantityPriceSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTeFromBo(
            hintText: "1",
            borderColor: StaticColors.grayColor,
            borderWidth: 1,
            fillColor: StaticColors.whiteColor,
            borderRadius: 10,
            lableText: StaticString.quantity,
            crossAxi: CrossAxisAlignment.start,
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: CustomTeFromBo(
            hintText: "0",
            borderColor: StaticColors.grayColor,
            borderWidth: 1,
            fillColor: StaticColors.whiteColor,
            borderRadius: 10,
            lableText: StaticString.price,
            crossAxi: CrossAxisAlignment.start,
          ),
        ),
      ],
    );
  }
}
