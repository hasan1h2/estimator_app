import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
<<<<<<< HEAD
import '../../../global_widget/show_dialog/show_dialog.dart';
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
import '../controllers/success_page_controller.dart';

class SuccessPageView extends GetView<SuccessPageController> {
  const SuccessPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(StaticImg.checked),
              SizedBox(height: 29.h,),
              Text(
                StaticString.success,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(StaticColors.greyNormal),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                child: Text(
                  StaticString.successMas,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(StaticColors.whiteDarker),
                  ),
                ),
              ),
              SizedBox(height: 90.h,),
              CustomButton(
                bgColor: StaticColors.btnColor,
                fColor: StaticColors.whiteColor,
<<<<<<< HEAD
                onTap: () {
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Do you want to complete your profile?',
                    seBtnTitle: 'Ok',
                    fBtnTitle: 'Cancel',
                    onTap1:() => Get.toNamed(Routes.MAIN_PAGE) ,
                    onTap2: () =>Get.toNamed(Routes.PROFILE_FROM_PAGE),
                    isSuccess: true,
                    lotiImg: StaticImg.editLoti,
                  );
                  },
=======
                onTap: () { Get.toNamed(Routes.MAIN_PAGE);},
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                title: StaticString.continueBtn,
              )
            ],
          ),
        )
      ),
    );
  }
}
