import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../../profile_main_page/controllers/profile_main_page_controller.dart';
import '../controllers/profile_from_page_controller.dart';
import '../inner_widget/profile_from.dart';

class ProfileFromPageView extends GetView<ProfileMainPageController> {
=======
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../controllers/profile_from_page_controller.dart';
import '../inner_widget/profile_from.dart';

class ProfileFromPageView extends GetView<ProfileFromPageController> {
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
  const ProfileFromPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(26),
          child: SingleChildScrollView(
<<<<<<< HEAD
            child: Form(
                key: controller.formKey,
                child: Column(
=======
            child: Column(
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100, bottom: 5),
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
                SizedBox(height: 50),
                ProfileFrom(),
                Text(
                  StaticString.comLogo,
                  style: StaticStyle.style(
                    14,
                    StaticColors.textPrColor,
                    FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    CustomUploadFileBox(
                      bgColor: StaticColors.photoColor,
                      icon: StaticImg.photos,
                      borderColor: StaticColors.grayColor,
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      flex: 1,
                      child:   CustomButton(
                        onTap: () {},
                        bgColor: StaticColors.mainColor,
                        title: StaticString.upLogo,
                        fColor: StaticColors.textPrColor,
                        isUploadBtn: true,
                        borderColor: StaticColors.grayColor,
                        borderWidth: 2,
                        isLeftIcon: true,
                        leftIcon: StaticImg.upload,
                        leftIconSize: 16,
                      ).marginOnly(bottom: 22),
                    ),
                    SizedBox(width: 8.w),
                    CustomUploadFileBox(
                      bgColor: StaticColors.photoColor,
                      icon: StaticImg.photoc,
                      borderColor: StaticColors.grayColor,
                      width: 50,
                      height: 42,
                      pd: 13,
                    ).marginOnly(bottom: 20),
                  ],
                ),
                SizedBox(height: 5.h),
                Text(
                  StaticString.phFormate,
                  style: StaticStyle.style(
                    12,
                    StaticColors.textPrColor,
                    FontWeight.w400,
                  ),
                ),
                SizedBox(height: 80.h),
                CustomButton(
                  bgColor: StaticColors.btnColor,
                  fColor: StaticColors.whiteColor,
<<<<<<< HEAD
                  onTap: () {

                    controller.saveOnTapProfrom()?ShowDialog.showCustomDialog(
                      context,
                      heading: 'Successfully Save info',
                      seBtnTitle: 'Ok',
                      onTap2: () => Get.toNamed(Routes.PROFILE_MAIN_PAGE),
                      onlySuccesMsg: true,
                      isSuccess: true,
                    ):null;

                  },
                  title: StaticString.sComBtn,height: 48,
                )
              ],
            )),
=======
                  onTap: () {},
                  title: StaticString.sComBtn,height: 48,
                )
              ],
            ),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          ),
        ),
      ),
    );
  }
}
