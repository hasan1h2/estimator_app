import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../../profile_main_page/controllers/profile_main_page_controller.dart';
import '../controllers/profile_edit_page_controller.dart';
import '../inner_widget/profile_edit_from.dart';
class ProfileEditPageView extends GetView<ProfileMainPageController> {
  const ProfileEditPageView({super.key});
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height using ScreenUtil for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final arguments = Get.arguments;
    String comName = arguments['comName'];
    String email = arguments['email'];
    String phoneNum = arguments['phoneNum'];
    String address = arguments['address'];
    String webSite = arguments['webSite'];

    return SafeArea(
      child: Scaffold(
        // appBar: CustomAppBar(title: 'Edit your profile'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Edit your profile",
                  style: StaticStyle.style(
                    24.sp,  // Using ScreenUtil for text scaling
                    StaticColors.textPrColor,
                    FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              // Using ScreenUtil for responsive sizing
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,  // Adjust size as needed
                      backgroundImage: AssetImage(StaticImg.ellipse), // Use your image
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
                        child: SvgPicture.asset(StaticImg.camera, width: 15, height: 15), // Camera icon
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              // Centered Text (Name)
              Center(
<<<<<<< HEAD
                child: Obx(() => Text(
                  controller.comNameVal.value,
=======
                child: Text(
                 controller.comNameVal.value,
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                  style: StaticStyle.style(
                    20.sp,  // Using ScreenUtil for text scaling
                    StaticColors.textPrColor,
                    FontWeight.w600,
                  ),
<<<<<<< HEAD
                ),)
=======
                ),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
              ),

              SizedBox(height: 50.h),

              // ProfileEditForm (Custom Widget)
<<<<<<< HEAD
              ProfileEditFrom(
                comName: comName,
                phoneNumber: phoneNum,
                emailAdd: email,
                webSite: webSite,
                comAdd: address,
              ),
=======
              ProfileEditFrom(comName: comName, phoneNumber: phoneNum, emailAdd: email, webSite: webSite, comAdd: address,),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840

              SizedBox(height: 50.h),

              // Save Changes Button with Responsive Height
              CustomButton(
                leftIcon: StaticImg.plus,
                iconColors: Colors.grey,
                borderColor: StaticColors.grayColor,
                borderRadius: 10.r,  // Responsive border radius
                width: screenWidth,  // Full width
                bgColor: StaticColors.itemBgColor1,
                fColor: StaticColors.whiteColor,
                onTap: () {
<<<<<<< HEAD
              controller.saveOnTap();
                 ShowDialog.showCustomDialog(
                    context,
                    heading: 'Successfully Update Profile',
                    seBtnTitle: 'Ok',
                    onTap2: () => Get.toNamed(Routes.PROFILE_MAIN_PAGE),
=======
                  ShowDialog.showCustomDialog(
                    context,
                    heading: 'Successfully Update Profile',
                    seBtnTitle: 'Ok',
                    onTap2: () => Get.toNamed(Routes.MAIN_PAGE),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                    onlySuccesMsg: true,
                    isSuccess: true,
                  );
                },
                title: StaticString.saveChanBtn,
                height: 56.h, // Responsive height
              ).marginOnly(top: 20.h, bottom: 10.h),  // Responsive margins
            ],
          ).paddingSymmetric(vertical: 30.h, horizontal: 20.w), // Responsive padding
        ),
      ),
    );
  }
}



// TextFormField(
// initialValue: comName,  // Setting initial value from ProfilePage
// decoration: InputDecoration(labelText: 'Company Name'),
// onChanged: (value) {
// controller.comNameVal.value = value;
// },
// ),

