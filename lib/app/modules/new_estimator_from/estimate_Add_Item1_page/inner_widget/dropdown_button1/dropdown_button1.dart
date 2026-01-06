import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../data/utils/static_colors/static_colors.dart';
import '../../../../../data/utils/static_string/static_string.dart';
import '../../../../global_widget/dropdownButton/customform_gets.dart';
class DropdownButton1 extends StatelessWidget {
  const DropdownButton1({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;

    return Row(
      children: [
        SizedBox(
          width: 290.w,
          height: 70.h,
          child: Obx(
                () => CustomDropdownButton2(
              hint: StaticString.emHint,
              buttonWidth: screenWidth,
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              buttonPadding: EdgeInsets.symmetric(horizontal: 20),
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(StaticColors.whiteColor),
                border: Border.all(
                  color: Color(StaticColors.grayColor),
                  width: 1,
                ),
              ),
              dropdownWidth: 320.w,
              dropdownPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),

              dropdownDecoration: BoxDecoration(
                color: Color(StaticColors.whiteColor),
                border: Border.all(
                  color: Color(StaticColors.grayColor),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              value: controller.selectedSubServiceProduct.value.isNotEmpty
                  ? controller.selectedSubServiceProduct.value
                  : controller.subServiceProduct[0], // Set default value
              dropdownItems: controller.subServiceProduct,
              onChanged: (String? value) {
                controller.selectedSubServiceProduct.value = value ?? '';
              },
            ),
          ),
        ),
        SizedBox(width: 5.w),
        FittedBox(
          child: Row(
            children: List.generate(
              2,
                  (index) => GestureDetector(
                onTap: () {

                  if(index==0){
                    controller.toggleSubProPho();
                    print(controller.toggleSubProPho.value);
                  }
                  if(index==1){
                    controller.toggleSubOp();
                    print(controller.toggleSubOp.value);
                  }

                },
                child: Container(
                  width: 40.w,
                  height: 60.h,
                  margin: EdgeInsets.only(right: 3.w),
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(StaticColors.whiteColor),
                    border: BoxBorder.all(
                      color: Color(StaticColors.grayColor),
                      width: 1,
                    ),
                  ),
                  child: SvgPicture.asset(
                    index == 0 ? StaticImg.camera : StaticImg.add,
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
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
