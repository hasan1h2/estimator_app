import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/utils/static_colors/static_colors.dart';
import '../../../../../data/utils/static_img/static_img.dart';
import '../../../../../data/utils/static_string/static_string.dart';
import '../../../../../data/utils/static_style/staticstyle.dart';
import '../../../../global_widget/custom_upload_filebox/custom_upload_filebox.dart';
import '../../../edit_photo_page/controllers/edit_photo_page_controller.dart';
import '../../../edit_photo_page/views/dilock.dart';
class ServiceProductPhotoAdd extends StatelessWidget {
  ServiceProductPhotoAdd({super.key});
  final mainController = Get.find<EditPhotoPageController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        FittedBox(
          child: Text(
            StaticString.mainProdServ,
            style: StaticStyle.style(
              14,
              StaticColors.itemBgColor1,
              FontWeight.w500,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Dilock.showCustomDialog(context, mainController);
          },
          child: CustomUploadFileBox(
            bgColor: StaticColors.photoColor,
            icon: StaticImg.photos,
            borderColor: StaticColors.grayColor,
          ),
        ),
      ],
    );
  }
}
