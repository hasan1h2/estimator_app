import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../controllers/profile_main_page_controller.dart';

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
                radius: 40,  // Adjust size as needed
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
          // Displaying company name reactively
          Obx(
                () => Text(
              controller.comNameVal.value,
              style: StaticStyle.style(
                20.sp,  // Using ScreenUtil for text scaling
                StaticColors.textPrColor,
                FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 190.w,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to edit profile page with the current data
                Get.toNamed(Routes.PROFILE_EDIT_PAGE, arguments: {
                  'comName': controller.comNameVal.value,
                  'email': controller.emailVal.value,
                  'phoneNum': controller.phoneNumVal.value,
                  'address': controller.addressVal.value,
                  'webSite': controller.webSiteVal.value,
                });
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
                backgroundColor: Color(StaticColors.itemBgColor1),
              ),
              child: Row(
                children: [
                  Text(
                    'Edit Profile',
                    style: StaticStyle.style(
                      16.sp,
                      StaticColors.whiteColor,
                      FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 15.w),
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
          ),
        ],
      ),
    );
  }
}
