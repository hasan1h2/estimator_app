import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../widget/estimate_top_bg_op.dart';
import '../controllers/estimate_options_page_controller.dart';
import '../inner_widget/discounts_from.dart';
import '../inner_widget/discounts_text.dart';
import '../inner_widget/estimate_op_from.dart';

class EstimateOptionsPageView extends GetView<EstimateOptionsPageController> {
  const EstimateOptionsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              EstimateTopBgOp(title: StaticString.estimateOp),
              Text(
                StaticString.estimateOp,
                style: StaticStyle.style(
                  15.3.sp,
                  StaticColors.textPrColor,
                  FontWeight.w600,
                ),
              ).paddingAll(20),
              // =======================EstimateOpFrom=============
              EstimateOpFrom().paddingSymmetric(horizontal: 20),
              SizedBox(height: 10.h),

              // =======================Preset Discounts Section=============
              // =======================Preset Discounts Text=============
              DiscountsText(),
              // =======================Preset Discounts Section====From=========



              SizedBox(
                height: 220.h,  // Ensure ListView builder doesn’t overflow
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),

                  itemCount: 3,
                  itemBuilder: (context, index) => FittedBox(
                    child: DiscountsFrom(
                      controller: controller,
                      discountsTitle: StaticString.militaryDisc,
                    ),
                  ),
                ),
              ).marginSymmetric(horizontal: 20),






              Text(
                StaticString.pdfSt,
                style: StaticStyle.style(
                  12.sp,
                  StaticColors.textPrColor,
                  FontWeight.w500,
                ),
              ).paddingSymmetric(horizontal: 20,),


              // =======================Preset Discounts Section======Button=======
              CustomButton(
                bgColor: StaticColors.whiteColor,
                fColor: StaticColors.textPrColor,
                onTap: () {
                },
                isUploadBtn: true,
                borderColor:StaticColors.grayColor,
                borderWidth: 1,
                title: StaticString.loGoCenter,
                height: 41.h,
                fWight: FontWeight.w400,fSize: 14,
                borderRadius: 10,
                width: 335.w,
              ).paddingSymmetric(horizontal: 20,vertical: 10),
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
                borderRadius: 10,fSize: 13.6,
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
