import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../controllers/find_customerm_page_controller.dart';
class CustomerBtn extends StatelessWidget {
  const CustomerBtn({super.key, required this.controlar});
  final FindCustomermPageController controlar;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 346.w,
      height: 50.h,
      child: Row(children: List.generate(4, (index) => Obx(() {
        bool sleValue=controlar.selectIndex.value == index.toString();
        return CustomButton(
          isLeftIcon: index != 0, // if index is 0, no icon
          leftIcon: index == 0
              ? null
              : controlar.btnTitle[index]["icon"], // Set icon based on index
          leftIconSize: index == 0 ? 0 : 8, // Adjust size for index 0
          borderWidth: index == 0 || index == 3 ? 0 : 2,
          isUploadBtn: index == 0 || index == 3
              ? false
              : true, // If index is 0, not an upload button
          borderColor: StaticColors.grayColor,
          borderRadius: 5.r,
          // Red color for index 3
          bgColor:sleValue
              ? StaticColors.grayColor
              : (index == 3
              ? StaticColors.redColor
              : (index == 0
              ? StaticColors.btnFiveColor
              : StaticColors.whiteColor)), // White for others
          // White text for index 0 and 3// Default text color for others
          fColor:sleValue
              ? StaticColors.textPrColor
              : index == 0 || index == 3
              ? StaticColors.whiteColor
              : StaticColors.textPrColor,
          onTap: () {
            controlar.chanceIndex(index);
          },
          title: controlar.btnTitle[index]["title"],
          fSize: 10.sp,
          iconColors: Color(
            index == 3 ? StaticColors.whiteColor : StaticColors.grayColor1,
          ),
          fWight: FontWeight.w500,
          height: 40.h , // Responsive height
          width: 78.w, // Responsive width
          iconMedelGapTex: 2,
        ).marginSymmetric(horizontal: 2);
      },
      ),),),
    );
  }
}
