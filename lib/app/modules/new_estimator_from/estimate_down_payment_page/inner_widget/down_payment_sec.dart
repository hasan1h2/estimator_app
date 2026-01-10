import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../controllers/estimate_down_payment_page_controller.dart';
import 'dropdown_button.dart';
class DownPaymentSec extends StatelessWidget {
  const DownPaymentSec({super.key});
  @override
  Widget build(BuildContext context) {
    final EstimateDownPaymentPageController controller = Get.put(EstimateDownPaymentPageController());
    double screenWidth = MediaQuery.of(context).size.width.w;
    return  Container(
      margin: REdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.all(20),
      height: 600.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        border: Border.all(
          color: Color(StaticColors.downPayBorder),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            children: [
              SvgPicture.asset(StaticImg.doler),
              SizedBox(width: 10.w),
              Text(
                StaticString.downPay,
                style: StaticStyle.style(
                  18,
                  StaticColors.textSeColor,
                  FontWeight.w700,
                ),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: CustomTeFromBo(
                  hintText: "30",
                  borderColor:
                  StaticColors.downPayBorder,
                  borderWidth: 1,
                  fillColor: StaticColors.whiteColor,
                  borderRadius: 10,
                  lableText: StaticString.require,
                  crossAxi: CrossAxisAlignment.start,

                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: CustomTeFromBo(
                  hintText: "\$800.00",
                  borderColor:
                  StaticColors.downPayBorder,
                  borderWidth: 1,
                  fillColor: StaticColors.whiteColor,
                  borderRadius: 10,
                  lableText: StaticString.amount,
                  crossAxi: CrossAxisAlignment.start,
                ),
              ),
            ],
          ).marginSymmetric(vertical: 10),

          Row(
            children: [
              Expanded(
                child: CustomTeFromBo(
                  hintText: "0",
                  borderColor: StaticColors.grayColor,
                  borderWidth: 1,
                  fillColor: StaticColors.whiteColor,
                  borderRadius: 10,
                  lableText: StaticString.payReceived,
                  crossAxi: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      StaticString.payMethod,
                      style: StaticStyle.style(
                        17,
                        StaticColors.textSeColor,
                        FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    DropdownBtnDiscount(
                      controller: controller,
                    ).marginOnly(top: 10),
                  ],
                ),
              ),
            ],
          ).marginSymmetric(vertical: 10),
          SizedBox(height: 15.h),
          Divider(
            height: 2.h,
            endIndent: 5,
            color: Color(StaticColors.downPayBorder),
            indent: 5,
            thickness: 2,
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                StaticString.remainingBal,
                style: StaticStyle.style(
                  17.6.sp,
                  StaticColors.textSeColor,
                  FontWeight.w500,
                ),
              ),
              Text(
                "\$800.00",
                style: StaticStyle.style(
                  22.sp,
                  StaticColors.downPayTextC,
                  FontWeight.w700,
                ),
              ),
            ],
          ).paddingSymmetric(
            vertical: 10,
            horizontal: 5,
          ),
          SizedBox(height: 15.h),
          CustomButton(
            leftIcon: StaticImg.chack,
            isLeftIcon: true,
            iconColors: Colors.grey,
            borderColor: StaticColors.grayColor,
            borderRadius: 10,
            fSize: 18.6,
            fWight: FontWeight.w600,
            width: screenWidth,
            bgColor: StaticColors.whiteLight,
            fColor: StaticColors.whiteColor,
            onTap: () {
              // if(index==1){
              //   Get.toNamed(Routes.EDIT_PHOTO_PAGE);
              // }
              controller.onSubmit(); // Call the submit method from controller
            },
            title: StaticString.processPay,
            height: 60.h, // Responsive height
          ).paddingSymmetric(vertical: 16),
        ],
      ),
    );
  }
}
