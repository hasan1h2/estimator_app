import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../../profile_main_page/controllers/profile_main_page_controller.dart';
import '../controllers/profile_from_page_controller.dart';
import '../inner_widget/profile_from.dart';
import '../../../global_widget/show_dialog/show_dialog.dart'; // Make sure this import is included for dialogs

class ProfileFromPageView extends GetView<ProfileMainPageController> {
  const ProfileFromPageView({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar( onTap: () { Get.toNamed(Routes.MAIN_PAGE); },),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 5),
                child: Text(
                  StaticString.proTitle,
                  style: StaticStyle.style(
                    24,
                    StaticColors.textSeColor,
                    FontWeight.w700,
                  ),
                ),
              ),
              Text(
                StaticString.proSubTitle,
                style: StaticStyle.style(
                  13,
                  StaticColors.textPrColor,
                  FontWeight.w400,
                ),
              ),
              SizedBox(height: 40.h),
              // Profile Form
              ProfileFrom(),
              SizedBox(height: 15.h),
              Text(
                StaticString.comLogo,
                style: StaticStyle.style(
                  14,
                  StaticColors.textPrColor,
                  FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  CustomUploadFileBox(
                    bgColor: StaticColors.photoColor,
                    icon: StaticImg.photos,
                    borderColor: StaticColors.grayColor,
                    pd: 8,
                    height: 100.h,
                    width: 100.w,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      height: 55,
                      onTap: () {},
                      bgColor: StaticColors.mainColor,
                      title: StaticString.upLogo,
                      fColor: StaticColors.textPrColor,
                      isUploadBtn: true,
                      borderColor: StaticColors.grayColor,
                      borderWidth: 2,
                      isLeftIcon: true,
                      leftIcon: StaticImg.upload,isIconColor: true,iconColors: Color(StaticColors.textPrColor),
                      leftIconSize: 14,
                    ).marginOnly(bottom: 24),
                  ),
                  SizedBox(width: 8.w),
                  CustomUploadFileBox(
                    bgColor: StaticColors.photoColor,
                    icon: StaticImg.photoc,
                    borderColor: StaticColors.grayColor,
                    width: 58,
                    height: 56,
                    pd: 8,
                  ).marginOnly(bottom: 20),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                StaticString.phFormate,
                style: StaticStyle.style(
                  14,
                  StaticColors.textPrColor,
                  FontWeight.w400,
                ),
              ),
              SizedBox(height: 60.h),
              // Save Changes Button
              CustomButton(
                bgColor: StaticColors.btnColor,
                fColor: StaticColors.whiteColor,fSize: 18.sp,
                onTap: () {
                  // Call the save function and show the dialog if successful
                  // if (controller.saveOnTapProfrom()) {
                    ShowDialog.showCustomDialog(
                      context,
                      heading: 'Successfully Save info',
                      seBtnTitle: 'Ok',
                      onTap2: () => Get.toNamed(Routes.MAIN_PAGE),
                      onlySuccesMsg: true,
                      isSuccess: true,
                    );
                  },
                // },
                title: StaticString.sComBtn,
                height: 48,
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
