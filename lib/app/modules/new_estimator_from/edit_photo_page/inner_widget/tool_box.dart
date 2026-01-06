import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';

class ToolBox extends StatelessWidget {
  const ToolBox({super.key, this.controller});
  final dynamic controller ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17,vertical: 10),
      height: 80.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        border: Border.all(color: Color(StaticColors.grayColor),width: 1),
      ),
      child: FittedBox(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              StaticString.tool,
              style: StaticStyle.style(
                11,
                StaticColors.greyNormal,
                FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.h,),

            Row(
              children: List.generate(
                3,
                    (index) => Obx(
                      () => CustomButton(
                                        bgColor: controller.selectedTool.value == index
                        ? StaticColors.itemBgColor1
                        : StaticColors.btnSevenColor,
                                        fColor: controller.selectedTool.value == index
                        ? StaticColors.whiteColor
                        : StaticColors.textPrColor,
                                        onTap: () {
                      controller.changeIndex(index);
                      print(controller.selectedTool);
                                        },
                                        isUploadBtn: controller.selectedTool.value == index
                        ? false
                        : true,
                                        borderColor: StaticColors.grayColor,
                                        borderWidth: 1,
                                        title: StaticString.freehand,
                                        height: 29.h,
                                        fWight: FontWeight.w500,
                                        fSize: 12,
                                        borderRadius: 5,
                                        width: 109.w,
                                      ).paddingOnly(right: 5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
