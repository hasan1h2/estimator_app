import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../widget/estimate_top_bg_op.dart';
import '../controllers/integrations_controller.dart';

class IntegrationsView extends GetView<IntegrationsController> {
  const IntegrationsView({super.key});
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(StaticColors.itemBgColor1)),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              EstimateTopBgOp(title: StaticString.integrations),

              Container(
                padding: EdgeInsets.symmetric( horizontal: 20,vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 800.h,
                decoration: BoxDecoration(
                  color: Color(StaticColors.whiteColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      StaticString.cRMSystems,
                      style: StaticStyle.style(
                        15,
                        StaticColors.textPrColor,
                        FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Text(
                      StaticString.cRMSystemsT,
                      style: StaticStyle.style(
                        12,
                        StaticColors.grayColor1,
                        FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    CustomButton(
                      bgColor: StaticColors.whiteColor,
                      fColor: StaticColors.textPrColor,
                      onTap: () {},
                      title: StaticString.zapierBtn,
                      height: 40.h,
                      fWight: FontWeight.w400,
                      isLeftIcon: true,
                      borderRadius: 10,
                      fSize: 14.6,
                      leftIcon: StaticImg.zapier,
                      isUploadBtn: true,
                      borderWidth: 2,
                      borderColor: StaticColors.grayColor,
                      width: 147.w,iconColors: Color(StaticColors.zipColor),
                    )
                  ],
                ),
              ),

              // =================How To Use Guide Box================
            ],
          ),
        ),
      ),
    );
  }
}
