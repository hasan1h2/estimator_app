import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class SubDeleteEditFro extends StatelessWidget {
  const SubDeleteEditFro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
        child: ListTile(
          title: Text(
            StaticString.carWash,
            style: StaticStyle.style(
              10,
              StaticColors.textPrColor,
              FontWeight.w500,
            ),
          ),
          subtitle: Text("\$99.99",style: StaticStyle.style(
            10,
            StaticColors.textSeColor,
            FontWeight.w500,
          ),),
          trailing: Row(
            mainAxisSize: .min,
            children: [
              SvgPicture.asset(StaticImg.edit, width: 17),
              SizedBox(width: 20.w),
              SvgPicture.asset(StaticImg.delete, width: 17),
            ],
          ),
        ),);
  }
}
