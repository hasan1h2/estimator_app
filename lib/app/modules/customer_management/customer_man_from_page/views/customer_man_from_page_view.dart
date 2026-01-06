import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/add_tow_btn_row/add_btn.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/customer_man_from_page_controller.dart';
import '../inner_widget/customar_from.dart';

class CustomerManFromPageView extends GetView<CustomerManFromPageController> {
  const CustomerManFromPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomarFrom(),
              SizedBox(height: 40.h),
              AddBtn(
                onTap1: () {
                bool valid= controller.saveOnTap();
                 valid? Get.toNamed(Routes.MAIN_PAGE):null;
                },
                onTap2: () {
                  Get.back();
                },
                fastBtnTitle: StaticString.saveCustomer,
                secBtnTitle: StaticString.cancel,
              ),
            ],
          ).paddingOnly(top: 98, left: 20, right: 20, bottom: 80),
        ),
      ),
    );
  }
}
