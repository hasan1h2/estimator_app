import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class SizBox extends StatelessWidget {
  const SizBox({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          StaticString.size,
          style: StaticStyle.style(
            11,
            StaticColors.greyNormal,
            FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.changeSizeRem();
              },
              child: Container(
                height: 30.h,
                width: 29.w,
                decoration: BoxDecoration(
                  color: Color(StaticColors.grayColor),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Icon(Icons.remove, size: 15),
              ),
            ),

            Container(
              height: 30.h,
              width: 250.w,
              decoration: BoxDecoration(
                color: Color(StaticColors.whiteColor),
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: Color(StaticColors.grayColor),
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              child: Obx(
                () => Text(
                  controller.size.value.toString(),

                  style: StaticStyle.style(
                    15,
                    StaticColors.textPrColor,
                    FontWeight.w500,
                  ),
                ),
              ),
            ).paddingSymmetric(horizontal: 8),
            GestureDetector(
              onTap: () =>  controller.changeSizeAdd(),
              child: Container(
                height: 30.h,
                width: 29.w,
                decoration: BoxDecoration(
                  color: Color(StaticColors.grayColor),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Icon(Icons.add, size: 15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
