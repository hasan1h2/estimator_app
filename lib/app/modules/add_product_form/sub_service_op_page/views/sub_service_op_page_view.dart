import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../add_proservice_parent_page/inner_widget/add_from.dart';
import '../controllers/sub_service_op_page_controller.dart';

class SubServiceOpPageView extends GetView<SubServiceOpPageController> {
  const SubServiceOpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onTap: () { Get.back(); },
        title: '',
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: CustomButton(
          borderWidth: 2,
          isUploadBtn: true,
          borderColor: StaticColors.btnFoColor,
          borderRadius: 10,
          bgColor: StaticColors.photoColor,
          fColor: StaticColors.grayColor1,
          onTap: () {
            Get.back();
          },
          title: StaticString.cancel,
          fSize: 16,
          fWight: FontWeight.w500,
          height: 68.h, // Responsive height
          width: MediaQuery.of(context).size.width,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StaticString.subServiceOp,
              style: StaticStyle.style(
                24.sp,
                StaticColors.textPrColor,
                FontWeight.w700,
              ),
            ),
            Text(
              StaticString.addNewOp,
              style: StaticStyle.style(
                18.sp,
                StaticColors.textPrColor,
                FontWeight.w700,
              ),
            ).paddingOnly(top: 20, bottom: 8),
            Text(
              StaticString.addNewSubOp,
              style: StaticStyle.style(
                14.sp,
                StaticColors.textSeColor,
                FontWeight.w400,
              ),
            ),
            // ===========================================AddFrom==========================
            AddFrom().paddingOnly(top: 10, bottom: 15),

            // =================================Existing Options===========================
            Text(
              StaticString.existingOp,
              style: StaticStyle.style(
                18.sp,
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.h),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.symmetric(vertical: 12),
                color: Color(StaticColors.whiteColor),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  leading: Text(
                    StaticString.op1,
                    style: StaticStyle.style(
                      18.sp,
                      StaticColors.textPrColor,
                      FontWeight.w500,
                    ),
                  ),
                  trailing: SvgPicture.asset(StaticImg.delete),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
