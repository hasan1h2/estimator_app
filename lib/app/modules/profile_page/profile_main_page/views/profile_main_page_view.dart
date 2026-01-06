import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../controllers/profile_main_page_controller.dart';
import '../inner_widget/photo_and_editbtn_sec.dart';
class ProfileMainPageView extends GetView<ProfileMainPageController> {
  const ProfileMainPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       bottomNavigationBar: NavBarMain(index: 2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PhotoAndEditbtnSec(),
              Column(
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
              ),
            ],
          ).paddingSymmetric(vertical: 50, horizontal: 20),
        ),
      ),
    );
  }
}
