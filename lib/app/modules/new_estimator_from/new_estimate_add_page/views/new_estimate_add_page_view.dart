import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../controllers/new_estimate_add_page_controller.dart';
import '../inner_widget/new_Estimate_From.dart';

class NewEstimateAddPageView extends GetView<NewEstimateAddPageController> {
  const NewEstimateAddPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarMain(index: 0),
      body: SingleChildScrollView(
        // Wrap your Column in SingleChildScrollView
        child: Padding(
          padding: EdgeInsets.only( top: 54),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Fixed crossAxisAlignment
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  StaticString.newEst,
                  style: StaticStyle.style(
                    24.sp,
                    StaticColors.textPrColor,
                    FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  StaticString.subTitle,
                  style: StaticStyle.style(
                    16,
                    StaticColors.textPrColor,
                    FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              NewEstimateFrom(),
            ],
          ),
        ),
      ),
    );
  }
}
