import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/add_tow_btn_row/add_btn.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/edit_service_product_page_controller.dart';
import '../inner_widget/sub_delete_edit_fro.dart';

class EditServiceProductPageView
    extends GetView<EditServiceProductPageController> {
  const EditServiceProductPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligning elements to the start of the column
        children: [
          // =========================Edit Service or Product Text Section=======
          Text(
            StaticString.editServPro, // Text from StaticString class
            style: StaticStyle.style(
              24.sp, // Font size based on screen size
              StaticColors.textPrColor, // Text color from StaticColors
              FontWeight.w700, // Font weight bold
            ),
          ).paddingOnly(bottom: 20), // Padding at the bottom of the text

          // =========================Edit Service or Product Card Section=======
          Expanded(
            child: ListView.builder(
              itemCount: 2, // The number of items in the list
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.only(bottom: 20), // Card margin at the bottom
                color: Color(StaticColors.whiteColor), // Card background color
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(StaticImg.product), // Image at the leading part
                      title: Text(StaticString.carWash), // Service name
                      subtitle: Text("\$99.99"), // Price of the service
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min, // Align children to the minimum space
                        children: [
                          // Edit Button
                          CustomButton(
                            width: 82.w,
                            borderRadius: 4,
                            onTap: () {},
                            fSize: 10.sp,
                            bgColor: StaticColors.mainColor,
                            title: StaticString.edit,
                            fColor: StaticColors.textPrColor,
                            isUploadBtn: true,
                            borderColor: StaticColors.grayColor,
                            borderWidth: 0.5.w,
                            isLeftIcon: true,
                            height: 25.h,
                            leftIcon: StaticImg.edit, // Edit icon
                            iconColors: Color(StaticColors.greyNormal),
                            leftIconSize: 8,
                          ),
                          SizedBox(width: 4.w),
                          // Delete Button
                          CustomButton(
                            width: 82.w,
                            borderRadius: 4,
                            onTap: () {
                              // Show confirmation dialog for delete action
                              ShowDialog.showCustomDialog(
                                context,
                                heading: 'Are you sure?',
                                seBtnTitle: 'Ok',
                                fBtnTitle: 'Cancel',
                                onTap1: () => Get.back(),
                                onTap2: () => Get.back(),
                                isSuccess: true,
                                onlySuccesMsg: true,
                              );
                            },
                            fSize: 10.sp,
                            bgColor: StaticColors.redColor,
                            title: StaticString.delete,
                            fColor: StaticColors.whiteColor,
                            borderColor: StaticColors.grayColor,
                            isLeftIcon: true,
                            height: 25.h,
                            leftIcon: StaticImg.delete, // Delete icon
                            iconColors: Color(StaticColors.whiteColor),
                            leftIconSize: 8,
                          ),
                        ],
                      ).paddingOnly(bottom: 15),
                    ),
                    // ==========================SubDeleteEditFro Section======
                    index == 0
                        ? SubDeleteEditFro().paddingOnly(
                      bottom: 10,
                      left: 11,
                      right: 11,
                    )
                        : SizedBox(width: 0), // Show additional widget for the first item
                  ],
                ),
              ),
            ),
          ),
          // =======================Cancel And Save Button Section============
          AddBtn(
            onTap1: () {Get.back();}, // Cancel button action
            onTap2: () {Get.back();}, // Save button action (for now both close the page)
            fastBtnTitle: StaticString.cancel, // Text for the cancel button
            secBtnTitle: StaticString.saveSer, // Text for the save button
          ),
        ],
      ).paddingOnly(top: 98, left: 20, right: 20, bottom: 100), // Padding for the entire column
    );
  }
}
