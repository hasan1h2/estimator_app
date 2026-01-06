import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavBarMain(index: 0),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 51,
                  right: 50,
                  top: 12,
                  bottom: 70,
                ),
                child: Image.asset(StaticImg.sploginba),
              ),
              Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: StaticString.newEstVal.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CustomButton(
                      bgColor: StaticColors.newPrColor,
                      fColor: StaticColors.whiteColor,
                      onTap: () {
                        if (index == 0) {
                          Get.toNamed(Routes.NEW_ESTIMATE_ADD_PAGE);
                        }
                        if (index == 1) {
                          Get.toNamed(Routes.ADD_PRODUCT_FORM_MAIN_PAGE);
                        }
                        if (index == 2) {
                          ShowDialog.showCustomDialog(
                            context,
                            heading:'Customer Management',
                            fBtnTitle: 'Add Customer',
                            seBtnTitle: 'Find Customer',

                           onTap1:  () => Get.toNamed(Routes.CUSTOMER_MAN_FROM_PAGE),
                           onTap2: () => Get.toNamed(Routes.FIND_CUSTOMERM_PAGE),
                          );
                        }
                        if (index == 3) {
                          Get.toNamed(Routes.SETTINGS_PAGE);
                        }
                      },
                      title: StaticString.newEstVal[index]["title"],
                      height: 61.h,
                      fWight: FontWeight.w400,
                      isLeftIcon: true,
                      borderRadius: 10,
                      leftIcon: StaticImg.plus,
                      width: 335.w,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
