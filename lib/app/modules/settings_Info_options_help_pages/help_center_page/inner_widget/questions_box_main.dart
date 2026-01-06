import 'package:estimatorapp/app/modules/settings_Info_options_help_pages/help_center_page/inner_widget/questions_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_img/static_img.dart';
import '../../../../data/utils/static_string/static_string.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class QuestionsBoxMain extends StatelessWidget {
  const QuestionsBoxMain({super.key, this.controller});
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: MediaQuery.of(context).size.height*.25,
      width: 392.w,
      decoration: BoxDecoration(
        color: Color(StaticColors.whiteColor),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(StaticColors.grayColor), width: 2),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          FittedBox(
            child: Row(
              children: [
                SvgPicture.asset(StaticImg.que).paddingOnly(right: 8, left: 15),
                Text(
                  StaticString.askedQuest,
                  style: StaticStyle.style(
                    13.6.sp,
                    StaticColors.textPrColor,
                    FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: StaticString.questionsVal.length,
              itemBuilder: (context, index) => QuestionsBox(
                questionsTitle: StaticString.questionsVal[index]["title"],
                questionsDec: StaticString.questionsVal[index]["subtitle"],
                controller: controller,
                selectIndex: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
