import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';
class UploadFileBox extends StatelessWidget {
  const UploadFileBox({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomButton(
          width: 238.w,
          onTap: () {},
          bgColor: StaticColors.mainColor,
          title: StaticString.upLogo,
          fColor: StaticColors.textPrColor,
          isUploadBtn: true,
          borderColor: StaticColors.grayColor,
          borderWidth: 1.w,
          isLeftIcon: true,
          height: 42.h,
          leftIcon: StaticImg.upload,
          iconColors: Color(StaticColors.greyNormal),
          leftIconSize: 16,
        ),
        SizedBox(width: 8.w),
        CustomUploadFileBox(
          bgColor: StaticColors.photoColor,
          icon: StaticImg.photoc,
          borderColor: StaticColors.grayColor,
          width: 50.w,
          height: 42.h,
          pd: 13,
        ),
      ],
    );
  }
}
