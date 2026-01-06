import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
class LinkIcon extends StatelessWidget {
  const LinkIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(color: Color(StaticColors.iconBgColor),borderRadius: BorderRadius.circular(10)),
            width:55.w ,
            height: 55.h,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(StaticImg.google,),
            )

        ),
        SizedBox(width: 20,),
        Container(
            decoration: BoxDecoration(color: Color(StaticColors.iconBgColor),borderRadius: BorderRadius.circular(10)),
            width:55.w ,
            height: 55.h,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(StaticImg.apple,),
            )

        )
      ],
    );
  }
}
