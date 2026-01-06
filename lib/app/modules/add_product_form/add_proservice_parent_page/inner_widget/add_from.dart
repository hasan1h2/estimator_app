import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
class AddFrom extends StatelessWidget {
  const AddFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomTeFromBo(
            isLableText: true,maxLines: 1,
            hintText: StaticString.addMaFormHint,
            borderColor: StaticColors.grayColor,
            borderWidth: 1.w,
            fillColor: StaticColors.whiteColor,
            borderRadius: 10.r,
            crossAxi: CrossAxisAlignment.start,
          ),
        ),
        Expanded(
          flex: 1,
          child: CustomButton(
            width: 80.w,
            borderRadius: 10.r,
            bgColor: StaticColors.btnColor,
            fColor: StaticColors.whiteColor,
            onTap: () {

            },
            title: StaticString.add,
            fSize: 16.sp,
            fWight: FontWeight.w500,
            height: 46.h, // Responsive height
          ).paddingAll(10),
        ),
      ],
    );
  }
}
