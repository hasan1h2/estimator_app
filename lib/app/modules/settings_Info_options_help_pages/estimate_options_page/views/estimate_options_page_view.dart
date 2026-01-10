import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/app_bar/app_bar.dart';
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
    return Scaffold(
      appBar: CustomAppBar(
        onTap: () {
          Get.back();
        },
        title: '',
      ),
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
              height: 300.h, // Ensure ListView builder doesn’t overflow
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

            SizedBox(height: 15.h),
            // =======================Preset Discounts Section======Button=======

            Center(
              child: CustomButton(
                bgColor: StaticColors.newPrColor,
                fColor: StaticColors.whiteColor,
                onTap: () {
                  Get.back();
                },
                title: StaticString.saveEstiOp,
                height: 61.h,
                fWight: FontWeight.w400,
                isLeftIcon: true,
                borderRadius: 10,
                fSize: 18,
                leftIcon: StaticImg.save,
                width: MediaQuery.of(context).size.width,
              ).paddingSymmetric(horizontal: 20, vertical: 10),
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
