import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/nav_bar/nav_bar_main.dart';
import '../controllers/settings_page_controller.dart';
import '../inner_widget/card.dart';
class SettingsPageView extends GetView<SettingsPageController> {
  const SettingsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBarMain(index: 1,),
      body: Column(
        children: [
          Center(
            child: FittedBox(
              child: Text(
                StaticString.settings,
                style: StaticStyle.style(
                  24.sp,
                  StaticColors.greyNormal,
                  FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: StaticString.settingsList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if(index==0){Get.toNamed(Routes.EDIT_COMPANY_INFO_PAGE);}
                if(index==1){Get.toNamed(Routes.ESTIMATE_OPTIONS_PAGE);}
                if(index==2){Get.toNamed(Routes.HELP_CENTER_PAGE);}
                if(index==3){Get.toNamed(Routes.INTEGRATIONS);}
                print(index);

              },
              child: MyCard(
                rightTitle: StaticString.settingsList[index],
                leftTitle: Icons.arrow_forward_ios_rounded,
                onTap: () {},
              ).paddingOnly(bottom: 13.w),
            ),
          ),
        ],
      ).marginOnly(right: 10.w,left: 10.w,top: 50.w,bottom: 20.w),
    );
  }
}
