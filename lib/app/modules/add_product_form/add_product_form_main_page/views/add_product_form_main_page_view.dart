import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../controllers/add_product_form_main_page_controller.dart';
class AddProductFormMainPageView
    extends GetView<AddProductFormMainPageController> {
  const AddProductFormMainPageView({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;
    return Scaffold(
      appBar: CustomAppBar(onTap: () {Get.back();  },title: '',),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StaticString.addProFormTi,
              style: StaticStyle.style(
                24.0.sp,
                StaticColors.textPrColor,
                FontWeight.w700,
              ),
            ),
            Text(
              StaticString.addProFormSubTi,
              style: StaticStyle.style(
                13.sp,
                StaticColors.textSeColor,
                FontWeight.w400,
              ),
            ).paddingSymmetric(vertical: 5),
            // =============================== CustomButton List ===================
            ListView.builder(
              shrinkWrap:
                  true, // Added shrinkWrap to make it scrollable within the Column
              itemCount: StaticString.addProBtnList.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Card(
                elevation: 1,
                color: Color(StaticColors.whiteColor),
                child: Obx(
                  () => CustomButton(
                    isLeftIcon: true,
                    leftIcon: index == 3
                        ? StaticImg.iconamoo
                        : StaticImg.plus,
                    iconColors: Colors.white,
                    isUploadBtn: true,
                    borderWidth: 1.w,
                    borderColor: StaticColors.grayColor,
                    borderRadius: 10.r,
                    width: screenWidth,
                    bgColor: controller.routesSelext.value == index.toString()
                        ? StaticColors.whiteLight
                        : StaticColors.newPrColor,
                    fColor: StaticColors.whiteColor,
                    onTap: () {
                      controller.toggleRoutes(index);
                    },
                    title: StaticString.addProBtnList[index],
                    fWight: FontWeight.w500,
                    fSize: 20.sp,
                    height: 61.h, // Responsive height
                  ),
                ),
              ).paddingOnly(top: 20),
            ),
            // =============================== Continue Button ====================
            SizedBox(height: 100.h),
            Obx(
              () => CustomButton(
                borderWidth: 2.w,
                borderColor: StaticColors.grayColor,
                borderRadius: 10.r,
                width: screenWidth,
                // Check the value of routesSelext (which is now a string)
                bgColor: controller.routesSelext.value.isNotEmpty
                    ? StaticColors.newPrColor
                    : StaticColors.whiteLight,
                fColor: StaticColors.whiteColor,
                onTap: () {
                  // Navigate
                 controller.routes();
                },
                title: StaticString.continueBtn,
                fSize: 24.sp,
                fWight: FontWeight.w700,
                height: 52.h, // Responsive height
              ),
            ),
          ],
        ).paddingOnly(top: 50, left: 20, right: 20, bottom: 20),
      ),
    );
  }
}
