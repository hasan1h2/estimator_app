import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../controllers/estimate_down_payment_page_controller.dart';
import '../inner_widget/discount_sec.dart';
import '../inner_widget/down_payment_sec.dart';
import '../inner_widget/estimate_dowSec_card.dart';
import '../inner_widget/price_section.dart';
class EstimateDownPaymentPageView extends GetView<EstimateDownPaymentPageController> {
  const EstimateDownPaymentPageView({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Background color container
                Positioned(
                  child: Container(
                    height: 1480.h, // ScreenUtil for responsive height
                    width: screenWidth, // ScreenUtil for responsive width
                    color: Color(StaticColors.itemBgColor1),
                  ),
                ),
                // Title positioned in the center
                Positioned(
                  top: 121.h,
                  left: 120.w,
                  child: FittedBox(
                    child: Text(
                      StaticString.newEst,
                      style: StaticStyle.style(
                        24,
                        StaticColors.whiteColor,
                        FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // Card with content
                Positioned(
                  top: 180.h,
                  left: 0,
                  right: 0,
                  child: Card(
                    margin: EdgeInsets.all(0),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 33,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ====================================EstimateDowsecCard======================
                          Column(
                            children: List.generate(
                              2,
                              (index) =>
                                  FittedBox(child: EstimateDowsecCard().marginOnly(bottom: 15)),
                            ),
                          ),
                          // ===============================PriceSection==============
                          FittedBox(child: PriceSection().marginOnly(bottom: 20)),
                          // ===============================Discount Text==============
                          FittedBox(
                            child: Text(
                              StaticString.disco,
                              style: StaticStyle.style(
                                16,
                                StaticColors.textSeColor,
                                FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          // ===============================Discount box==============
                          DiscountSec(controller: controller),
                          // ===============================Down Payment box==============
                          SizedBox(height: 15.h),
                          FittedBox(child: DownPaymentSec()),
                          SizedBox(height: 15.h),
                          // ===============================CustomButton Sec==============
                          Column(
                            children: [
                              CustomButton(
                                bgColor: StaticColors.btnColor,
                                fColor: StaticColors.whiteColor,
                                onTap: () {Get.toNamed(Routes.ESTIMATE_FULL_SUMMARY_PAGE);},
                                title: StaticString.savePre,
                                height: 57.h,
                                fWight: FontWeight.w600,
                                fSize: 13.6,
                                borderRadius: 7,

                              ),
                              SizedBox(height: 25.h),
                              CustomButton(
                                bgColor: StaticColors.whiteColor,
                                fColor: StaticColors.textPrColor,
                                onTap: () {
                                  Get.toNamed(Routes.ESTIMATE_FULL_SUMMARY_PAGE);
                                },
                                title: StaticString.prevWiSaving,
                                isUploadBtn: true,
                                borderColor: StaticColors.grayColor,
                                borderWidth: 1,
                                height: 57.h,
                                fWight: FontWeight.w600,
                                fSize: 13.6,
                                borderRadius: 7,
                              ),
                            ],
                          ).marginOnly(bottom: 50),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
