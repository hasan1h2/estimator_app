import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
<<<<<<< HEAD
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/profile_main_page_controller.dart';

=======
import '../controllers/profile_main_page_controller.dart';
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
class PhotoAndEditbtnSec extends GetView<ProfileMainPageController> {
  const PhotoAndEditbtnSec({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Profile",
            style: StaticStyle.style(
              24.sp, // Using ScreenUtil for text scaling
              StaticColors.textPrColor,
              FontWeight.w700,
            ),
          ),
          SizedBox(height: 40.h),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 40, // Adjust size as needed
                backgroundImage: AssetImage(
                  StaticImg.ellipse,
                ), // Use your image
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: SvgPicture.asset(
                    StaticImg.camera,
                    width: 15,
                    height: 15,
                  ), // Camera icon
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
<<<<<<< HEAD
          Obx(
            () => Text(
              controller.comNameVal.value,
              style: StaticStyle.style(
                20.sp, // Using ScreenUtil for text scaling
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
=======
          Text(
            controller.comNameVal.value,
            style: StaticStyle.style(
              20.sp, // Using ScreenUtil for text scaling
              StaticColors.textPrColor,
              FontWeight.w600,
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 160.w,
<<<<<<< HEAD
            child: ElevatedButton(
              onPressed: () {
                ShowDialog.showCustomDialog(
                  context,
                  heading: 'Do you want to edit profile?',
                  seBtnTitle: 'Ok',
                  fBtnTitle: 'Cancel',
                  onTap1:() => Get.back() ,
                  onTap2:  () {
                    // Edit Profile
                    Get.toNamed(
                      Routes.PROFILE_EDIT_PAGE,
                      arguments: {
                        'comName': controller.comNameVal.value,
                        'email': controller.emailVal.value,
                        'phoneNum': controller.phoneNumVal.value,
                        'address': controller.addressVal.value,
                        'webSite': controller.webSiteVal.value,
                      },
                    );
                  },
                  isSuccess: true,
                  lotiImg: StaticImg.editLoti,
                );



              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
=======
           child:  ElevatedButton(
              onPressed: () {
                // Edit Profile
                Get.toNamed(Routes.PROFILE_EDIT_PAGE, arguments: {
                  'comName': controller.comNameVal.value,
                  'email': controller.emailVal.value,
                  'phoneNum': controller.phoneNumVal.value,
                  'address': controller.addressVal.value,
                  'webSite': controller.webSiteVal.value,
                });
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 12.h,
                ),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                backgroundColor: Color(StaticColors.itemBgColor1),
              ),
              child: Row(
                children: [
<<<<<<< HEAD
                  Text(
                    'Edit Profile',
                    style: StaticStyle.style(
                      14.sp,
                      StaticColors.whiteColor,
                      FontWeight.w600,
                    ),
                  ),
=======
                  Text('Edit Profile', style: StaticStyle.style(
                    14.sp,
                    StaticColors.whiteColor,
                    FontWeight.w600,
                  ),),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                  SizedBox(width: 10.w),
                  SvgPicture.asset(
                    StaticImg.edit,
                    width: 10,
                    height: 15,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
<<<<<<< HEAD
=======

>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
          ),
        ],
      ),
    );
  }
}
