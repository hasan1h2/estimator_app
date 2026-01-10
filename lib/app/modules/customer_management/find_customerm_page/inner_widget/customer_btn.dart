import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/find_customerm_page_controller.dart';

class CustomerBtn extends StatelessWidget {
  const CustomerBtn({super.key, required this.controlar});
  final FindCustomermPageController controlar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 346.w,
      height: 50.h,
      child: Row(
        children: List.generate(4, (index) => Obx(() {
          bool sleValue = controlar.selectIndex.value == index.toString();
          return Center(
            child: CustomButton(
              isLeftIcon: index != 0,  // if index is 0, no icon
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
              bgColor: sleValue
                  ? StaticColors.grayColor
                  : (index == 3
                  ? StaticColors.redColor
                  : (index == 0
                  ? StaticColors.btnFiveColor
                  : StaticColors.whiteColor)), // White for others
              // White text for index 0 and 3 // Default text color for others
              fColor: sleValue
                  ? StaticColors.textPrColor
                  : index == 0 || index == 3
                  ? StaticColors.whiteColor
                  : StaticColors.textPrColor,
              onTap: () {
                controlar.chanceIndex(index);

                // Navigate to Edit Service Product Page if index is 1
                if (index == 1) {
                  Get.toNamed(Routes.ESTIMATE_FULL_SUMMARY_PAGE);
                }

                // Show confirmation dialog if index is 2
                else if (index == 2) {
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Are you sure?',
                    seBtnTitle: 'Ok',
                    fBtnTitle: 'Cancel',
                    onTap1: () => Get.back(),
                    onTap2: () => Get.toNamed(Routes.NEW_ESTIMATE_ADD_PAGE),
                    isSuccess: true,
                    lotiImg: StaticImg.editLoti,
                  );
                }

                // Show confirmation dialog if index is 3
                else if (index == 3) {
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Are you sure?',
                    seBtnTitle: 'Ok',
                    fBtnTitle: 'Cancel',
                    onTap1: () => Get.back(),
                    onTap2: () => Get.back(),
                    isSuccess: true,
                    lotiImg: StaticImg.deleteLoti,
                  );
                }
              },
              title: controlar.btnTitle[index]["title"],
              fSize: 14.sp,
              iconColors: Color(
                index == 3 ? StaticColors.whiteColor : StaticColors.grayColor1,
              ),
              fWight: FontWeight.w500,
              height: 50.h, // Responsive height
              width: index==1?100.w:75.w, // Responsive width
              iconMedelGapTex: 2,
            ).marginSymmetric(horizontal: 2),
          );
        })),
      ),
    );
  }
}
