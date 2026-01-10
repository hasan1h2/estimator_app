import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../data/utils/static_colors/static_colors.dart';
import '../../../../../data/utils/static_img/static_img.dart';
import '../../../../../routes/app_pages.dart';
import '../../../../global_widget/custom_button/custom_button.dart';
import '../../controllers/estimate_add_item1_page_controller.dart';

class BtnSec extends GetView<EstimateAddItem1PageController> {
  const BtnSec({super.key,});


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width.w;
    return Container(
      height: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
        ],
      ),
      child: Column(
        children: [
          CustomButton(
            // onTap: () => controller.addMainForm,
            onTap: () {
              print("hhhhhhhhhhhhhhhhhhh");
              controller.addMainForm;
            },
            bgColor: StaticColors.itemBgColor1,
            title: 'Add Main Form',
            fColor: StaticColors.whiteColor,
          ),CustomButton(
            onTap: () {
              print("hhhhhhhhhhhhhhhhhhh");
            },
            bgColor: StaticColors.whiteLight,
            title: 'Add Main Form',
            fColor: StaticColors.whiteColor,
          ),
          // ElevatedButton(
          //   onPressed: controller.addMainForm,
          //   child: const Text("Add Main Form"),
          // ),
          // const SizedBox(width: 8),
          // OutlinedButton(
          //   onPressed: controller.addSubFormToActiveMain,
          //   child: const Text("Add Sub Form"),
          // ),
        ],
      ),
    );

    //   FittedBox(
    //   child: Column(
    //     children: List.generate(controller.btnTitle.length, (index) {
    //       return CustomButton(
    //         isLeftIcon:index == 0? false: true,
    //         leftIcon: StaticImg.plus,
    //         iconColors: Colors.grey,
    //         isUploadBtn: index == 0 ? false : true,
    //         borderWidth: index == 0 ? 0 : 2,
    //         borderColor: StaticColors.grayColor,
    //         borderRadius: 10,
    //         width: screenWidth,
    //         bgColor: index == 0
    //             ? StaticColors.btnColor
    //             : StaticColors.whiteColor,
    //         fColor: index == 0
    //             ? StaticColors.whiteColor
    //             : StaticColors.grayColor1,
    //         onTap: () {
    //           if(index==0){
    //             // Get.toNamed(Routes.ESTIMATE_DOWN_PAYMENT_PAGE);
    //             controller.addMainForm;
    //           } if(index==1){
    //             // Get.toNamed(Routes.NEW_ESTIMATE_ADD_PAGE);
    //             controller.addSubFormToActiveMain;
    //           }
    //           controller.onSubmit(); // Call the submit method from controller
    //         },
    //         title: controller.btnTitle[index],
    //         height: 44.h, // Responsive height
    //       ).paddingOnly(top: 13);
    //     }),
    //   ),
    // );
  }
}
