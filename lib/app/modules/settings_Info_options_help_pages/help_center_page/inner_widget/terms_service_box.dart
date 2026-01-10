import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../controllers/help_center_page_controller.dart';
import 'terms_service_dec.dart';

class TermsServiceBox extends GetView<HelpCenterPageController> {
  const TermsServiceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
      margin: EdgeInsets.only(bottom: 20.h, top: 10.h),
      decoration: BoxDecoration(color: Color(StaticColors.whiteColor)),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => controller.toggleMore(0), // Now toggles using the index 0
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, ),
              child: Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(StaticImg.email).paddingOnly(right: 10),
                        Text(
                          StaticString.termsService,
                          style: StaticStyle.style(
                            16.6.sp,
                            StaticColors.textPrColor,
                            FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      controller.showMoreMap[0]?.value == true
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
                () => controller.showMoreMap[0]?.value == true
                ? Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 550.h,
              width: 390.w,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: StaticString.termsVal.length,
                itemBuilder: (context, index) => TermsServiceDec(
                  title: StaticString.termsVal[index]["title"],
                  subTitle: StaticString.termsVal[index]["subtitle"],
                ).paddingSymmetric(vertical: 10),
              ),
            )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
