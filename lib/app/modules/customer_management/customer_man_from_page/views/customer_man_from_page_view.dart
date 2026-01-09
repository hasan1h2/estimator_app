import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
<<<<<<< HEAD
import '../../../../data/utils/static_img/static_img.dart';
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
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
<<<<<<< HEAD
                  Get.toNamed(Routes.MAIN_PAGE);
                },
                onTap2: () {
                  bool valid= controller.saveOnTap();
                  valid? ShowDialog.showCustomDialog(
                    context,
                    heading: 'Succesfully update',
                    seBtnTitle: 'Ok',
                    onTap2: () =>  Get.toNamed(Routes.MAIN_PAGE),
                    isSuccess: true,onlySuccesMsg: true,
                    lotiImg: StaticImg.success,
                  ):null;



                },
                fastBtnTitle:StaticString.cancel,
                secBtnTitle: StaticString.saveCustomer ,
=======
                bool valid= controller.saveOnTap();
                 valid? Get.toNamed(Routes.MAIN_PAGE):null;
                },
                onTap2: () {
                  Get.back();
                },
                fastBtnTitle: StaticString.saveCustomer,
                secBtnTitle: StaticString.cancel,
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
              ),
            ],
          ).paddingOnly(top: 98, left: 20, right: 20, bottom: 80),
        ),
      ),
    );
  }
}
