import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';
import '../../../global_widget/custom_button/custom_button.dart';
import '../../../global_widget/add_tow_btn_row/add_btn.dart';
<<<<<<< HEAD
import '../../../global_widget/show_dialog/show_dialog.dart';
=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
import '../controllers/edit_service_product_page_controller.dart';
import '../inner_widget/sub_delete_edit_fro.dart';
class EditServiceProductPageView
    extends GetView<EditServiceProductPageController> {
  const EditServiceProductPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: .start,
        children: [
          // =========================Edit Service or Product= Text Section=======
          Text(
            StaticString.editServPro,
            style: StaticStyle.style(
              24.sp,
              StaticColors.textPrColor,
              FontWeight.w700,
            ),
          ).paddingOnly(bottom: 20),

          // =========================Edit Service or Product= Card Section=======

          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.only(bottom: 20),
                color: Color(StaticColors.whiteColor),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(StaticImg.product),
                      title: Text(StaticString.carWash),
                      subtitle: Text("\$99.99"),
                      trailing: Row(
                        mainAxisSize: .min,
                        children: [
                          CustomButton(
                            width: 82.w,
                            borderRadius: 4,
                            onTap: () {},
                            fSize: 10.sp,
                            bgColor: StaticColors.mainColor,
                            title: StaticString.edit,
                            fColor: StaticColors.textPrColor,
                            isUploadBtn: true,
                            borderColor: StaticColors.grayColor,
                            borderWidth: 0.5.w,
                            isLeftIcon: true,
                            height: 25.h,
                            leftIcon: StaticImg.edit,
                            iconColors: Color(StaticColors.greyNormal),
                            leftIconSize: 8,
                          ),
                          SizedBox(width: 4.w),
                          CustomButton(
                            width: 82.w,
                            borderRadius: 4,
                            onTap: () {
<<<<<<< HEAD
                              ShowDialog.showCustomDialog(
                                context,
                                heading: 'Are your sure',
                                seBtnTitle: 'Ok',
                                fBtnTitle: 'Cancel',
                                onTap1:() => Get.back() ,
                                onTap2: () => Get.back(),
                                isSuccess: true,
                                lotiImg: StaticImg.deleteLoti,
                              );
=======
                              print(index);
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                            },
                            fSize: 10.sp,
                            bgColor: StaticColors.redColor,
                            title: StaticString.delete,
                            fColor: StaticColors.whiteColor,
                            borderColor: StaticColors.grayColor,
                            isLeftIcon: true,
                            height: 25.h,
                            leftIcon: StaticImg.delete,
                            iconColors: Color(StaticColors.whiteColor),
                            leftIconSize: 8,
                          ),
                        ],
                      ).paddingOnly(bottom: 15),
                    ),
                    // ==========================SubDeleteEditFro==Section======
                    index == 0
                        ? SubDeleteEditFro().paddingOnly(
                            bottom: 10,
                            left: 11,
                            right: 11,
                          )
                        : SizedBox(width: 0),
                  ],
                ),
              ),
            ),
          ),
          // =======================Cancel And Save Button Section============
          AddBtn(
            onTap1: () {Get.back();},
            onTap2: () {Get.back();},
            fastBtnTitle: StaticString.cancel,
            secBtnTitle: StaticString.saveSer,
          ),
        ],
      ).paddingOnly(top: 98, left: 20, right: 20, bottom: 100),
    );
  }
}
