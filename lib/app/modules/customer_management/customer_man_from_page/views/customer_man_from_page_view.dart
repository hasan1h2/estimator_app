import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/add_tow_btn_row/add_btn.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/customer_man_from_page_controller.dart';
import '../inner_widget/customar_from.dart';

class CustomerManFromPageView extends GetView<CustomerManFromPageController> {
  const CustomerManFromPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          onTap: () { Get.back(); },
          title: '',
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomarFrom(),  // Custom form widget for customer details
            SizedBox(height: 40.h),  // Spacing

            // Add buttons for saving or canceling
            AddBtn(
              onTap1: () {
                bool valid = controller.saveOnTap();  // Validate the form
                if (valid) {
                  // If form is valid, navigate to the MAIN_PAGE
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Successfully updated',  // Success message heading
                    seBtnTitle: 'Ok',  // Button title for OK
                    onTap2: () => Get.toNamed(Routes.MAIN_PAGE),  // Navigate to MAIN_PAGE
                    isSuccess: true,  // Mark as a success dialog
                    onlySuccesMsg: true,  // Only show success message
                    lotiImg: StaticImg.success,  // Lottie animation for success
                  );
                }
              },
              onTap2: () {
                // Cancel action, just go back
                Get.back();
              },
              fastBtnTitle: StaticString.cancel,  // Cancel button title
              secBtnTitle: StaticString.saveCustomer,  // Save button title
            ),
          ],
        ).paddingOnly(top: 40, left: 20, right: 20, bottom: 80),  // Padding around the content
      ),
    );
  }
}
