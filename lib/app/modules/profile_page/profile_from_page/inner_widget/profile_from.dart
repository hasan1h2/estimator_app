import 'package:flutter/material.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../global_widget/custom_text_from_with_border/custom_te_from_bo.dart';
class ProfileFrom extends StatelessWidget {
  const ProfileFrom({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTeFromBo(                                
          hintText: StaticString.comHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comName,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
          hintText: StaticString.phHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.phNumber,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
          hintText: StaticString.emHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.emAdd,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
          hintText: StaticString.webHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.webSit,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
          hintText: StaticString.comAddHint,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comAdd,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        CustomTeFromBo(
          hintText: StaticString.comAddHint2,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.comAdd2,
          crossAxi: CrossAxisAlignment.start,
        ),SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: CustomTeFromBo(
                hintText: StaticString.city,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.city,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomTeFromBo(
                hintText: StaticString.state,
                borderColor: StaticColors.grayColor,
                borderWidth: 1,
                fillColor: StaticColors.whiteColor,
                borderRadius: 10,
                lableText: StaticString.state,
                crossAxi: CrossAxisAlignment.start,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        CustomTeFromBo(
          hintText: StaticString.zCod,
          borderColor: StaticColors.grayColor,
          borderWidth: 1,
          fillColor: StaticColors.whiteColor,
          borderRadius: 10,
          lableText: StaticString.zCode,
          crossAxi: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}
