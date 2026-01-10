import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../controllers/estimate_add_item1_page_controller.dart';

class DialogBoxAreaEdit extends StatelessWidget {
  const DialogBoxAreaEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final EstimateAddItem1PageController controller = Get.find(); // Access the controller

    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Custom TextField Widget
            CustomTeFromBo(
              hintText: StaticString.areaNameHin,
              borderColor: StaticColors.grayColor,
              borderWidth: 1,
              fillColor: StaticColors.whiteColor,
              borderRadius: 10,
              lableText: StaticString.areaLabel,
              crossAxi: CrossAxisAlignment.start,
              mainController: controller.editArea.value, // Pass the controller's value
            ),

            // Row with buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    bgColor: StaticColors.btnColor,
                    fColor: StaticColors.whiteColor,
                    onTap: controller.cancelOnTap,
                    title: StaticString.cancel,
                    height: 47.h,
                    fWight: FontWeight.w600,
                    fSize: 13.6,
                    borderRadius: 7,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: CustomButton(
                    bgColor: StaticColors.whiteColor,
                    fColor: StaticColors.textPrColor,
                    onTap: controller.saveOnTap,
                    title: StaticString.save,
                    isUploadBtn: true,
                    borderColor: StaticColors.grayColor,
                    borderWidth: 1,
                    height: 47.h,
                    fWight: FontWeight.w600,
                    fSize: 13.6,
                    borderRadius: 7,
                  ),
                ),
              ],
            ).marginSymmetric(vertical: 20),
          ],
        ),
      ),
    );
  }
}
