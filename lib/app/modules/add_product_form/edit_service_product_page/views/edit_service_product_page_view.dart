import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:estimatorapp/app/data/utils/static_string/static_string.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../../../global_widget/app_bar/app_bar.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/show_dialog/show_dialog.dart';
import '../../add_proservice_parent_page/inner_widget/add_from.dart';
import '../../sub_service_op_page/controllers/sub_service_op_page_controller.dart';
import '../inner_widget/sub_delete_edit_fro.dart';

class EditServiceProductPageView extends GetView<SubServiceOpPageController> {
  const EditServiceProductPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onTap: () {
          Get.back();
        },
        title: '',
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: CustomButton(
          borderWidth: 2,
          isUploadBtn: true,
          borderColor: StaticColors.btnFoColor,
          borderRadius: 10,
          bgColor: StaticColors.photoColor,
          fColor: StaticColors.grayColor1,
          onTap: () {
            Get.back();
          },
          title: StaticString.cancel,
          fSize: 16,
          fWight: FontWeight.w500,
          height: 68.h, // Responsive height
          width: MediaQuery.of(context).size.width,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            Text(
              StaticString.editServPro,
              style: StaticStyle.style(
                22.sp,
                StaticColors.textPrColor,
                FontWeight.w700,
              ),
            ),
            SizedBox(height: 25.h),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.only(
                  bottom: 20,
                ), // Card margin at the bottom
                color: Color(StaticColors.whiteColor), // Card background color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          StaticImg.product,
                          width: 60.w,
                          height: 70.h,
                          fit: BoxFit.cover,
                        ).paddingOnly(top: 20),
                        SizedBox(width: 5.w,),

                        Column(
                          children: [
                            Text(
                              StaticString.carWash,
                              style: StaticStyle.style(
                                14.sp,
                                StaticColors.textPrColor,
                                FontWeight.w500,
                              ),
                            ),
                            Text(
                              "\$99.99",
                              style: StaticStyle.style(
                                12,
                                StaticColors.textPrColor,
                                FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 5.w,),
                        Row(
                          mainAxisSize: MainAxisSize
                              .min, // Align children to the minimum space
                          children: [
                            // Edit Button
                            CustomButton(
                              width: 80.w,
                              borderRadius: 4,
                              onTap: () {

                                ShowDialog.showCustomDialog(
                                  context,
                                  heading: 'Are you sure?',
                                  seBtnTitle: 'Ok',
                                  fBtnTitle: 'Cancel',
                                  onTap1: () => Get.back(),
                                  onTap2: () => Get.toNamed(Routes.ADD_PROSERVICE_PAGE),
                                  lotiImg: StaticImg.editLoti,
                                  isSuccess: true

                                );
                              },
                              fSize: 16.sp,
                              bgColor: StaticColors.mainColor,
                              title: StaticString.edit,
                              fColor: StaticColors.textPrColor,
                              isUploadBtn: true,
                              borderColor: StaticColors.grayColor,
                              borderWidth: 0.5.w,
                              isLeftIcon: true,
                              height: 45.h,
                              leftIcon: StaticImg.edit, // Edit icon
                              iconColors: Color(StaticColors.greyNormal),
                              leftIconSize: 8,
                            ),
                            SizedBox(width: 4.w),
                            // Delete Button
                            CustomButton(
                              width: 92.w,
                              borderRadius: 4,
                              onTap: () {
                                // Show confirmation dialog for delete action
                                ShowDialog.showCustomDialog(
                                    context,
                                    heading: 'Are you sure?',
                                    seBtnTitle: 'Ok',
                                    fBtnTitle: 'Cancel',
                                    onTap1: () => Get.back(),
                                    onTap2: () => Get.back(),
                                    lotiImg: StaticImg.deleteLoti,
                                    isSuccess: true

                                );
                              },
                              fSize: 16.sp,
                              bgColor: StaticColors.redColor,
                              title: StaticString.delete,
                              fColor: StaticColors.whiteColor,
                              borderColor: StaticColors.grayColor,
                              isLeftIcon: true,
                              height: 45.h,
                              leftIcon: StaticImg.delete, // Delete icon
                              iconColors: Color(StaticColors.whiteColor),
                              leftIconSize: 8,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    if (index == 0)
                      SubDeleteEditFro(onTapDelete: () {
                        ShowDialog.showCustomDialog(
                            context,
                            heading: 'Are you sure?',
                            seBtnTitle: 'Ok',
                            fBtnTitle: 'Cancel',
                            onTap1: () => Get.back(),
                            onTap2: () => Get.back(),
                            lotiImg: StaticImg.deleteLoti,
                            isSuccess: true

                        );

                      },
                      onTapEdit: () {
                        ShowDialog.showCustomDialog(
                            context,
                            heading: 'Are you sure?',
                            seBtnTitle: 'Ok',
                            fBtnTitle: 'Cancel',
                            onTap1: () => Get.back(),
                            onTap2: () => Get.toNamed(Routes.ADD_PROSERVICE_PARENT_PAGE),
                            lotiImg: StaticImg.editLoti,
                            isSuccess: true

                        );
                      },

                      ),
                  ],
                ).paddingSymmetric(horizontal: 20,vertical: 20),
              ),
            ),
          ],
        ).marginSymmetric(horizontal: 10),
      ),
    );
  }
}
