import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/add_tow_btn_row/add_btn.dart';
import '../../add_proservice_page/inner_widget/text_from.dart';
import '../../add_proservice_page/inner_widget/upload_file_box.dart';
import '../controllers/add_proservice_parent_page_controller.dart';
class AddProserviceParentPageView
    extends GetView<AddProserviceParentPageController> {
  const AddProserviceParentPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                StaticString.parenServTitle,
                style: StaticStyle.style(
                  24.sp,
                  StaticColors.textPrColor,
                  FontWeight.w700,
                ),
              ).paddingSymmetric(vertical: 13),
              TextFrom(isParent: true),
              Text(
                StaticString.servPho,
                style: StaticStyle.style(
                  14.sp,
                  StaticColors.textPrColor,
                  FontWeight.w500,
                ),
              ).paddingOnly(bottom: 10),
              // ==============================UploadFileBox==================
              UploadFileBox(),
              Text(
                StaticString.phFormate,
                style: StaticStyle.style(
                  10.sp,
                  StaticColors.grayColor1,
                  FontWeight.w400,
                ),
              ).paddingOnly(top: 5, bottom: 38),
              // ===============================CustomButton==continueBtn===================
              AddBtn(
                onTap1: () {Get.back();},
                onTap2: () {Get.back();},
                fastBtnTitle: StaticString.cancel,
                secBtnTitle: StaticString.saveSer,
              ),
            ],
          ).paddingOnly(top: 80, left: 20, right: 20, bottom: 30),
        ),
      ),
    );
  }
}
