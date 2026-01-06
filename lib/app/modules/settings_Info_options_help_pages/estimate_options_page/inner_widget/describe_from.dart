import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';

class DescribeFrom extends StatelessWidget {
  const DescribeFrom({
    super.key,
    required this.lableTitle,
    required this.lableTitleHint,
    required this.maxLines,
  });
  final String lableTitle;
  final String lableTitleHint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomTeFromBo(
          maxLines: maxLines,
          lableText: lableTitle,
          hintText: lableTitleHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          crossAxi: CrossAxisAlignment.start,
        ),
        Positioned(
          right: 15,
          bottom: 15,
          child: SvgPicture.asset(
            StaticImg.edit,
            width: 16,
            height: 16,
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
