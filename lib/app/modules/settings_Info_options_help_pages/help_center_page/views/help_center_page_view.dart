import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
import '../../widget/estimate_top_bg_op.dart';
import '../controllers/help_center_page_controller.dart';
import '../inner_widget/help_center_from.dart';
import '../inner_widget/questions_box.dart';
import '../inner_widget/questions_box_main.dart';
import '../inner_widget/terms_service_box.dart';
import '../inner_widget/use_guide_main.dart';
import '../inner_widget/use_guide_op.dart';

class HelpCenterPageView extends GetView<HelpCenterPageController> {
  const HelpCenterPageView({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EstimateTopBgOp(title: StaticString.helpCenter),
            HelpCenterFrom().paddingOnly(
              bottom: 15,  // Adjusted padding value
              top: 30,
              right: 18,
              left: 20,
            ),
            Center(
              child: CustomButton(
                bgColor: StaticColors.btnSixColor,
                fColor: StaticColors.whiteColor,
                onTap: () {},
                title: StaticString.savCompInfo,
                height: 62.h,
                fWight: FontWeight.w400,
                isLeftIcon: true,
                borderRadius: 10,
                fSize: 17.6,
                leftIcon: StaticImg.save,
                width: MediaQuery.of(context).size.width,
              ).paddingSymmetric(horizontal: 20, vertical: 10),
            ), // Adjusted button layout
            // =================How To Use Guide Box================
            FittedBox(child: UseGuideMain()),
            // =================QuestionsBoxMain Box================
            QuestionsBoxMain(controller: controller),
            // =================TermsServiceBox Box================
            TermsServiceBox().paddingSymmetric(horizontal: 20),
          ],
        ).marginOnly(bottom: 40.w),
      ),
    );
  }
}
