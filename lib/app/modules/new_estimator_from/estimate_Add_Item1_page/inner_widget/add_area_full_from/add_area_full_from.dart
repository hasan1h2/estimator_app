import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../data/utils/static_colors/static_colors.dart';
import '../../../../../data/utils/static_string/static_string.dart';
import '../../../../../data/utils/static_style/staticstyle.dart';
import '../../controllers/estimate_add_item1_page_controller.dart';
import '../area_section/area_section.dart';
import '../dropdown_button/dropdown_button.dart';
import '../quantity_price_sec/quantity_price_sec.dart';
import '../service_product_photo_add/service_product_photo_add.dart';
import '../sub_service_op/sub_service_op.dart';
import '../sub_service_pro/sub_service_pro.dart';
import '../sub_service_product_photo_add/sub_service_product_photo_add.dart';

class AddAreaFullFrom extends GetView<EstimateAddItem1PageController> {
  const AddAreaFullFrom({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        20,
        50,
        20,
        0,
      ), // Removed bottom padding
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${controller.value1.value} : ${index + 1}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (index != 0)
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => controller.removeMainForm(index),
                ),
            ],
          ),
          SizedBox(height: 15.h),

          // ===========================================Edit Area Section====================
          AreaSection(controller: controller),
          SizedBox(height: 27.h),
          FittedBox(
            child: Text(
              StaticString.addItem,
              style: StaticStyle.style(
                18.sp,
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 15.h),
          FittedBox(
            child: Text(
              StaticString.servicePro,
              style: StaticStyle.style(
                16.sp,
                StaticColors.textPrColor,
                FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 15.h),
          // ====================================MyDropdownButton===Service_Product========================
          MyDropdownButton(controller: controller),
          controller.isSubServ.value ? SizedBox(height: 15.h) : SizedBox(),
          // ====================================MyDropdownButton==Sub_Service_Product=========================
          Obx(
            () => controller.isSubServ.value
                ? SubServicePro(controller: controller)
                : SizedBox(),
          ),
          controller.isSubServ.value ? SizedBox(height: 15.h) : SizedBox(),
          // ====================================MyDropdownButton==Sub_Service_Op=========================
          Obx(
            () => controller.isSubOp.value
                ? SubServiceOp(controller: controller)
                : SizedBox(),
          ),
          SizedBox(height: 15.h),
          // ==================   // Text fields for Quantity and Price==============
          QuantityPriceSec(),
          SizedBox(height: 15.h),
          // Photos section
          FittedBox(
            child: Text(
              StaticString.photos,
              style: StaticStyle.style(
                16,
                StaticColors.textPrColor,
                FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              ServiceProductPhotoAdd(),
              SizedBox(width: 10.w),
              Obx(
                () => controller.isSubServ.value
                    ? SubServiceProductPhotoAdd()
                    : SizedBox(width: 0.w),
              ),
              SizedBox(height: 30.h),
            ],
          ),
          // List of buttons for multiple actions
        ],
      ),
    );
  }
}
