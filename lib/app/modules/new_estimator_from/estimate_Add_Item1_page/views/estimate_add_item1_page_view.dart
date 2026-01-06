import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../controllers/estimate_add_item1_page_controller.dart';
import '../inner_widget/area_section.dart';
import '../inner_widget/btn_sec.dart';
import '../inner_widget/dropdown_button/dropdown_button.dart';
import '../inner_widget/quantity_price_sec.dart';
import '../inner_widget/service_product_photo_add/service_product_photo_add.dart';
import '../inner_widget/sub_service_op/sub_service_op.dart';
import '../inner_widget/sub_service_pro/sub_service_pro.dart';
import '../inner_widget/sub_service_product_photo_add/sub_service_product_photo_add.dart';
class EstimateAddItem1PageView extends GetView<EstimateAddItem1PageController> {
  const EstimateAddItem1PageView({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1250.h, // ScreenUtil for responsive height
                width: MediaQuery.of(context).size.width, // ScreenUtil for responsive width
                color: Color(StaticColors.itemBgColor1),
                child: Stack(
                  children: [
                    // Title positioned in the center
                    Positioned(
                      top: 121.h,
                      left: 146.w,
                      child: Text(
                        StaticString.newEst,
                        style: StaticStyle.style(
                          24,
                          StaticColors.whiteColor,
                          FontWeight.w700,
                        ),
                      ),
                    ),
                    // Card with content
                    Positioned(
                      top: 180.h,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 440.w,
                        height: 1250.h,
                        decoration: BoxDecoration(
                          color: Color(StaticColors.whiteColor),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.r),
                            topLeft: Radius.circular(10.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.w,
                            vertical: 33.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              SizedBox(height: 22.h),
                              FittedBox(
                                child: Text(
                                  StaticString.servicePro,
                                  style: StaticStyle.style(
                                    14.sp,
                                    StaticColors.textPrColor,
                                    FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h),
                              // ====================================MyDropdownButton===Service_Product========================
                              MyDropdownButton(controller: controller),
                              SizedBox(height: 27.h),
                              // ====================================MyDropdownButton==Sub_Service_Product=========================
                              Obx(() => controller.isSubServ.value?SubServicePro(controller: controller,) : SizedBox(),),
                              SizedBox(height: 27.h),
                              // ====================================MyDropdownButton==Sub_Service_Op=========================
                              Obx(() => controller.isSubOp.value?SubServiceOp(controller: controller,): SizedBox(),),
                              SizedBox(height: 20.h),
                              // ==================   // Text fields for Quantity and Price==============
                              QuantityPriceSec(),
                              SizedBox(height: 32.h),
                              // Photos section
                            Obx(() =>   controller.isMainProPhoto.value?FittedBox(
                              child: Text(
                                StaticString.photos,
                                style: StaticStyle.style(
                                  16,
                                  StaticColors.textPrColor,
                                  FontWeight.w500,
                                ),
                              ),
                            ): SizedBox(height: 0.h),),
                              SizedBox(height: 32.h),
                            Obx(() => controller.isMainProPhoto.value? Row(
                              children: [
                                ServiceProductPhotoAdd(),
                                SizedBox(width: 10.w),
                                controller.isSubProPhoto.value? SubServiceProductPhotoAdd():SizedBox(width:0.w),
                                SizedBox(height: 30.h),
                              ],
                            ):SizedBox(height: 0.h,),),
                              // List of buttons for multiple actions
                              FittedBox(
                                child: BtnSec(
                                  controller: controller,
                                ).marginOnly(bottom: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
