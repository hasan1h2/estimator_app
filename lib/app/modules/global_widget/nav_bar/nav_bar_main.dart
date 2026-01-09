
import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../General_controller/controllers/general_controller_controller.dart';
class NavBarMain extends StatelessWidget {
  const NavBarMain({super.key, this.index = 0});
  final int index;

  @override
  Widget build(BuildContext context) {
    var controlar = Get.put(GeneralControllerController());
    List<String> title = ["Home", "Setting", "Profile"];
    List<IconData> icon = [Icons.home, Icons.settings, Icons.person];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      height: 90.h,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black12,
            blurRadius: 24.r,
            spreadRadius: 0.r,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          title.length,
              (index) => GestureDetector(
            onTap: () {
              controlar.chIndexButtomNav(index);
              if (index == 0) {
                // Get.to(MyForm(),transition:Transition.fade,duration: Duration(seconds: 1));
                Get.toNamed(Routes.MAIN_PAGE );
              }
              if (index == 1) {
                Get.toNamed(Routes.SETTINGS_PAGE,);
              } if (index == 2) {
<<<<<<< HEAD
                Get.toNamed(Routes.PROFILE_MAIN_PAGE );
=======
                Get.toNamed(Routes.PROFILE_FROM_PAGE );
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
              }
            },
            child:Obx(() =>  Column(
              children: [
                Icon(
                  icon[index],
                  size: 30.sp,
                  color: controlar.selectIndexButtomNa.value == index
                      ? Color(StaticColors.itemBgColor1)
                      : Colors.grey,
                ),
                Text(title[index],style: TextStyle(color: controlar.selectIndexButtomNa.value == index?Color(StaticColors.itemBgColor1):Colors.grey),),
              ],
            ),)
          ),
        ),
      ),
    );
  }
}
