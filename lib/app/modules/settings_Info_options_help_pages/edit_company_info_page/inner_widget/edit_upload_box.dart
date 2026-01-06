import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';

class EditUploadBox extends StatelessWidget {
  const EditUploadBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomUploadFileBox(
          bgColor: StaticColors.photoColor,
          icon: StaticImg.photoc,
          borderColor: StaticColors.grayColor,
          width: 60,
          height: 60,
          pd: 13,
        ).paddingOnly(bottom: 50),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            children: [
              CustomButton(
                width: MediaQuery.of(context).size.width,
                onTap: () {},
                bgColor: StaticColors.mainColor,
                title: StaticString.upLogo,
                fColor: StaticColors.textPrColor,
                isUploadBtn: true,
                borderColor: StaticColors.grayColor,
                borderWidth: 2,
                isLeftIcon: true,
                height: 42,
                leftIcon: StaticImg.upload,
                iconColors: Color(StaticColors.greyNormal),
                leftIconSize: 16,
              ),
              SizedBox(height: 6.h),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                onTap: () {},
                bgColor: StaticColors.mainColor,
                title: StaticString.chLogo,
                fColor: StaticColors.textPrColor,
                isUploadBtn: true,
                borderColor: StaticColors.grayColor,
                borderWidth: 2,
                isLeftIcon: true,
                height: 42,
                leftIcon: StaticImg.photoc,
                iconColors: Color(StaticColors.greyNormal),
                leftIconSize: 16,
              ),
              SizedBox(height: 6.h),
              Text(
                StaticString.phFormate,
                style: StaticStyle.style(
                  10.sp,
                  StaticColors.grayColor1,
                  FontWeight.w400,
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
