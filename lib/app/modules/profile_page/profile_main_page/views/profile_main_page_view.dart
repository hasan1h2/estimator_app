import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
<<<<<<< HEAD
import '../../../global_widget/nav_bar/nav_bar_main.dart';
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
import '../controllers/profile_main_page_controller.dart';
import '../inner_widget/photo_and_editbtn_sec.dart';
class ProfileMainPageView extends GetView<ProfileMainPageController> {
  const ProfileMainPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
<<<<<<< HEAD
       bottomNavigationBar: NavBarMain(index: 2),
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
        body: SingleChildScrollView(
          child: Column(
            children: [
              PhotoAndEditbtnSec(),
              Column(
<<<<<<< HEAD
                children: List.generate(controller.profileText.length, (index) {
                  return ListTile(
                    title: Obx(() => Text(
                      controller.profileText[index]['title'],
                      style: StaticStyle.style(
                        14.sp,
                        StaticColors.grayColor1,
                        FontWeight.w500,
                      ),
                    )),
                    subtitle: Obx(() => Text(
                      controller.profileText[index]['value'],
                      style: StaticStyle.style(
                        16.sp,
                        StaticColors.textPrColor,
                        FontWeight.w600,
                      ),
                    )),
                  );
                }),
=======
                children: List.generate(controller.profileText.length, (index) => ListTile(
                  title: Text(
                    controller.profileText[index]['title'],
                    style: StaticStyle.style(
                      14.sp,
                      StaticColors.grayColor1,
                      FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    controller.profileText[index]['value'],
                    style: StaticStyle.style(
                      16.sp,
                      StaticColors.textPrColor,
                      FontWeight.w600,
                    ),
                  ),
                )),
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
              ),
            ],
          ).paddingSymmetric(vertical: 50, horizontal: 20),
        ),
      ),
    );
  }
}
