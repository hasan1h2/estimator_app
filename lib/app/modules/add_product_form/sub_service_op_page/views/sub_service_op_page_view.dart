import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../add_proservice_parent_page/inner_widget/add_from.dart';
import '../controllers/sub_service_op_page_controller.dart';

class SubServiceOpPageView extends GetView<SubServiceOpPageController> {
  const SubServiceOpPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: .start,
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
                14.sp,
                StaticColors.textPrColor,
                FontWeight.w700,
              ),
            ).paddingOnly(top: 40, bottom: 2),
            Text(
              StaticString.addNewSubOp,
              style: StaticStyle.style(
                10.sp,
                StaticColors.grayColor1,
                FontWeight.w400,
              ),
            ),
            // ===========================================AddFrom==========================
            AddFrom().paddingOnly(top: 10, bottom: 10),

            // =================================Existing Options================
            Text(
              StaticString.existingOp,
              style: StaticStyle.style(
                14.sp,
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Card(
                  margin: EdgeInsets.symmetric(vertical: 9),
                  color: Color(StaticColors.whiteColor),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    leading: Text(
                      StaticString.op1,
                      style: StaticStyle.style(
                        16.sp,
                        StaticColors.textPrColor,
                        FontWeight.w500,
                      ),
                    ),
                    trailing: SvgPicture.asset(StaticImg.delete),
                  ),
                ),
              ),
            ),
            // =================================Cancel Btn================
            CustomButton(
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
              height: 48.h, // Responsive height
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ).paddingOnly(top: 98, left: 20, right: 20, bottom: 80),
      ),
    );
  }
}
