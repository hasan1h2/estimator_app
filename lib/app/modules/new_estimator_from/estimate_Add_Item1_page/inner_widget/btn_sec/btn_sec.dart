import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
class BtnSec extends StatelessWidget {
  const BtnSec({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;
    return FittedBox(
      child: Column(
        children: List.generate(controller.btnTitle.length, (index) {
          return CustomButton(
            isLeftIcon:index == 0? false: true,
            leftIcon: StaticImg.plus,
            iconColors: Colors.grey,
            isUploadBtn: index == 0 ? false : true,
            borderWidth: index == 0 ? 0 : 2,
            borderColor: StaticColors.grayColor,
            borderRadius: 10,
            width: screenWidth,
            bgColor: index == 0
                ? StaticColors.btnColor
                : StaticColors.whiteColor,
            fColor: index == 0
                ? StaticColors.whiteColor
                : StaticColors.grayColor1,
            onTap: () {
              if(index==0){
                Get.toNamed(Routes.ESTIMATE_DOWN_PAYMENT_PAGE);
              } if(index==1){
                Get.toNamed(Routes.NEW_ESTIMATE_ADD_PAGE);
              }
              controller
                  .onSubmit(); // Call the submit method from controller
            },
            title: controller.btnTitle[index],
            height: 44.h, // Responsive height
          ).paddingOnly(top: 13);
        }),
      ),
    );
  }
}
