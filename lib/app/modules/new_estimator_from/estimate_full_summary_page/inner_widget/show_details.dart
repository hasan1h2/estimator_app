import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../controllers/estimate_full_summary_page_controller.dart';
class ShowDetails extends GetView<EstimateFullSummaryPageController> {
  const ShowDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          "Estimate For",
          style: StaticStyle.style(
            11.9.sp,
            StaticColors.textPrColor,
            FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: () => controller.togShowDet(),
          child: Row(
            children: [
              Text(
                "Show Details",
                style: StaticStyle.style(
                  11.9.sp,
                  StaticColors.redColor,
                  FontWeight.w600,
                ),
              ),
              Obx(
                () => Icon(
                  controller.isShowDetails.value
                      ?  Icons.keyboard_arrow_up_outlined
                      :Icons.keyboard_arrow_down_outlined ,
                  color: Color(StaticColors.redColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
