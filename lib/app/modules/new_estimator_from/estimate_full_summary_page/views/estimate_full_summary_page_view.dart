import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/estimate_full_summary_page_controller.dart';
import '../inner_widget/bottom_sec.dart';
import '../inner_widget/details_show.dart';
import '../inner_widget/show_details.dart';
class EstimateFullSummaryPageView
    extends GetView<EstimateFullSummaryPageController> {
  const EstimateFullSummaryPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomSec(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Center(child: Image.asset(StaticImg.ellipse)),
              SizedBox(height: 15.h),
              Center(
                child: Text(
                  "Titan Lightening",
                  style: StaticStyle.style(
                    20.sp,
                    StaticColors.textPrColor,
                    FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: List.generate(
                    4,
                    (index) => Text(
                      controller.subTitle[index],
                      style: StaticStyle.style(
                        index == 0 ? 16.sp : 14.sp,
                        StaticColors.textPrColor,
                        FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              // ===========================Show Details===================
              ShowDetails(),
              SizedBox(height: 15.h),
            DetailsShow(),
              // ===========================Msg===================

              CustomButton(
                leftIcon: StaticImg.plus,
                iconColors: Colors.grey,

                borderColor: StaticColors.grayColor,
                borderRadius: 10,
                width: MediaQuery.of(context).size.width,
                bgColor:  StaticColors.btnColor,

                fColor: StaticColors.whiteColor,
                onTap: () {
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Successfully Submitted ',
                    seBtnTitle: 'Ok',
                      onTap2:   () => Get.toNamed(Routes.MAIN_PAGE),
                    onlySuccesMsg: true,isSuccess: true
                  );
                },
                title:"Send Estimate" ,
                height: 66.h, // Responsive height
              ).marginOnly(top: 20,bottom: 10),
            ],
          ).paddingSymmetric(vertical: 50, horizontal: 20),
        ),
      ),
    );
  }
}
