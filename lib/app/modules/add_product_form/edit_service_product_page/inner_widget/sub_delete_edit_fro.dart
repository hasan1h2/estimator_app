import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class SubDeleteEditFro extends StatelessWidget {
  const SubDeleteEditFro({super.key, required this.onTapEdit, required this.onTapDelete});
  final VoidCallback onTapEdit;
  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return  Card(
        child: ListTile(
          title: Text(
            StaticString.carWash,
            style: StaticStyle.style(
              16.sp,
              StaticColors.textPrColor,
              FontWeight.w500,
            ),
          ),
          subtitle: Text("\$99.99",style: StaticStyle.style(
            14.sp,
            StaticColors.textSeColor,
            FontWeight.w500,
          ),),
          trailing: Row(
            mainAxisSize: .min,
            children: [
              GestureDetector(
                onTap:onTapEdit ,
                  child: SvgPicture.asset(StaticImg.edit, width: 24)),
              SizedBox(width: 20.w),
              GestureDetector(
                onTap: onTapDelete,
                  child: SvgPicture.asset(StaticImg.delete, width: 24)),
            ],
          ),
        ),);
  }
}
