import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom-sech_box/custom_sech_box.dart';
import '../controllers/find_customerm_page_controller.dart';
import '../inner_widget/customar_detels.dart';
import '../inner_widget/customer_btn.dart';

class FindCustomermPageView extends GetView<FindCustomermPageController> {
  const FindCustomermPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          onTap: () { Get.back(); },
          title: '',
        ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w, bottom: 80.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            FittedBox(
              child: Text(
                StaticString.findCustomer,
                style: StaticStyle.style(
                  20.sp,
                  StaticColors.textPrColor,
                  FontWeight.w600,
                ),
              ).paddingOnly(bottom: 20),
            ),

            // Search Box Section
            SizedBox(height: 60.h, child: CustomSechBox(hintTextSiz: 18)),
            SizedBox(height: 15.h,),

            // Customer List Section
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                padding: EdgeInsets.only(top: 2),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.w),
                    height: 245.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(StaticColors.whiteColor),
                      border: Border.all(
                        color: Color(StaticColors.grayColor),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Customer Details
                        Column(
                          children: List.generate(
                            controller.customerDet.length,
                                (index) => CustomarDetels(index: index,controller: controller,),
                          ),
                        ).marginOnly(left: 10),
                        SizedBox(height: 12.h),

                        // Customer Button Section
                     Center(child: CustomerBtn(controlar: controller)),
                      ],
                    ),
                  );
                },
              ).marginOnly(bottom: 10),
            ),
          ],
        ),
      ),
    );
  }
}
