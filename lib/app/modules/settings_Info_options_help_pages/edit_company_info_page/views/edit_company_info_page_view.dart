import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/utils/static_img/static_img.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';
import '../../widget/estimate_top_bg_op.dart';
import '../controllers/edit_company_info_page_controller.dart';
import '../inner_widget/edit_from.dart';
import '../inner_widget/edit_upload_box.dart';

class EditCompanyInfoPageView extends GetView<EditCompanyInfoPageController> {
  const EditCompanyInfoPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              EstimateTopBgOp(title: StaticString.editComInfo,),
              Text(
                StaticString.comInform,
                style: StaticStyle.style(
                  15.3.sp,
                  StaticColors.textPrColor,
                  FontWeight.w600,
                ),
              ).paddingOnly(top: 16, bottom: 20, left: 24, right: 24),
// ===========================Edit Company Info from===================
              Padding(
                padding: const EdgeInsets.all(20),
                child: EditFrom(),
              ),
              Text(
                StaticString.comLogo,
                style: StaticStyle.style(
                  11.9.sp,
                  StaticColors.textPrColor,
                  FontWeight.w500,
                ),
              ).paddingOnly( bottom: 12, left: 24, right: 24),

              // ===================EditUploadBox=======================
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: EditUploadBox(),
              ),

              // ====================CustomButton====================
              CustomButton(
                bgColor: StaticColors.newPrColor,
                fColor: StaticColors.whiteColor,
                onTap: () {
                  Get.back();
                },
                title: StaticString.savCompInfo,
                height: 52.h,
                fWight: FontWeight.w400,
                isLeftIcon: true,
                borderRadius: 10,
                leftIcon: StaticImg.save,
                width: 335.w,
              ).paddingSymmetric(horizontal: 20,vertical: 10),
            ],
          ),
        ),
      ),
    );
  }
}
