import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../inner_widget/colors_box.dart';
import '../inner_widget/siz_box.dart';
import '../inner_widget/tool_box.dart';

class Dilock {
  static void showCustomDialog(BuildContext context,controller) {
    showDialog(

      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(StaticColors.whiteColor),
        title:    Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          height: 60.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(StaticColors.itemBgColor1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            StaticString.editPho,
            style: StaticStyle.style(
              14,
              StaticColors.whiteColor,
              FontWeight.w700,
            ),
          ),
        ),
        content: SizedBox(
          height: 560.h,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              // ==============================ToolBox==========
              ToolBox(controller: controller),
              // ============================ColorsBox============
              ColorsBox(controller: controller).marginAll(20),
              // =======================================SIZE Box=====================
              FittedBox(child: SizBox(controller: controller).marginAll(20)),
              // =======================================Image Box=====================
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: 334.w,
                height: 192.h,
                decoration: BoxDecoration(
                  color: Color(StaticColors.grayColor),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(StaticColors.grayColor1),
                    width: 1,
                  ),
                ),
                child: Image.asset(StaticImg.car, fit: BoxFit.cover),
              ),
              // =======================================Button Section=====================
              FittedBox(
                child: Row(
                  children: [
                    CustomButton(
                      bgColor: StaticColors.whiteColor,
                      fColor: StaticColors.textPrColor,
                      onTap: () {Get.back();},
                      isUploadBtn: true,
                      borderColor: StaticColors.grayColor,
                      borderWidth: 1,
                      title: StaticString.clear,
                      height: 44.h,
                      fWight: FontWeight.w500,
                      fSize: 15,
                      borderRadius: 7,
                      width: 157.w,

                    ),
                    SizedBox(width: 12),
                    CustomButton(
                      bgColor: StaticColors.itemBgColor1,
                      fColor: StaticColors.whiteColor,
                      onTap: () {Get.back();},
                      title: StaticString.save,
                      height: 44.h,
                      fWight: FontWeight.w500,
                      fSize: 15,
                      borderRadius: 7,
                      width: 157.w,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20,vertical:20 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}