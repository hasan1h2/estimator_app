import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class ColorsBox extends StatelessWidget {
  const ColorsBox({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          StaticString.color,
          style: StaticStyle.style(
            11,
            StaticColors.greyNormal,
            FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.h,),
        FittedBox(
          child: Row(
            children: List.generate(
              controller.colors.length,
                  (index) => Obx(
                    () => GestureDetector(
                  onTap: () {
                    controller.changeColor(index);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 26.h,
                    width: 26.w,
                    decoration: BoxDecoration(
                      color: controller.colors[index],
                      border: Border.all(
                        width: 1,
                        color: controller.selectedColor.value == index
                            ? Color(StaticColors.textPrColor)
                            : Colors.transparent,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
