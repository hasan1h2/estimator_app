import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import 'terms_service_dec.dart';

class TermsServiceBox extends StatelessWidget {
  const TermsServiceBox({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      padding: EdgeInsets.only(bottom: 30.h, top: 10.h),
      margin: EdgeInsets.only(bottom: 50.h, top: 10.h),
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
      decoration: BoxDecoration(color: Color(StaticColors.whiteColor)),
      child: Column(
        children: [
          GestureDetector(
<<<<<<< HEAD
            onTap: () => controller.toggleMoreTems(),
=======
            onTap: () => controller.toggleMore(),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: .start,
                      children: [
                        SvgPicture.asset(StaticImg.email).paddingOnly(right: 10),
                        Text(
                          StaticString.termsService,
                          style: StaticStyle.style(
                            13.6,
                            StaticColors.textPrColor,
                            FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    Icon(
<<<<<<< HEAD
                      controller.showMoreTems.value
=======
                      controller.showMore.value
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Obx(
<<<<<<< HEAD
            () => controller.showMoreTems.value
=======
            () => controller.showMore.value
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 20,),
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
