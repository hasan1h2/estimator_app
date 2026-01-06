import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
class TextFrom extends StatelessWidget {
  const TextFrom({super.key,  this.isParent=false});
  final bool isParent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTeFromBo(
          hintText: StaticString.addMaFormHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText:isParent?StaticString.parentSer:StaticString.servicePro,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13),

// =======================Parent service From===================
    isParent?CustomTeFromBo(
          hintText: StaticString.addMaFormHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.parentSer,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13):SizedBox(width: 0.w,),

        CustomTeFromBo(
          maxLines: 4,
          hintText: StaticString.addMaFormDescHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.addMaFormDesc,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13),
        CustomTeFromBo(
          hintText: "0.00",
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10.r,
          lableText: StaticString.addMaFormPrice,
          crossAxi: CrossAxisAlignment.start,
        ).paddingSymmetric(vertical: 13),
      ],
    );
  }
}
