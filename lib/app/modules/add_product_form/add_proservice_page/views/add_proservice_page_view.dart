import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../controllers/add_proservice_page_controller.dart';
import '../../../global_widget/add_tow_btn_row/add_btn.dart';
import '../inner_widget/text_from.dart';
import '../inner_widget/upload_file_box.dart';
class AddProservicePageView extends GetView<AddProservicePageController> {
  const AddProservicePageView({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;
    return Scaffold(
      appBar: CustomAppBar(onTap: () {Get.back();  },title: '',),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              StaticString.addMaProServ,
              style: StaticStyle.style(
                24.sp,
                StaticColors.textPrColor,
                FontWeight.w700,
              ),
            ).paddingSymmetric(vertical: 13),
            // ==============================From==================
            TextFrom(),
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
              onTap1: () => Get.back(),
              onTap2: () => Get.back(),
              fastBtnTitle: StaticString.saveSer,
              secBtnTitle: StaticString.cancel,
            ),
          ],
        ).paddingOnly(top: 40, left: 20, right: 20, bottom: 20),
      ),
    );
  }
}
