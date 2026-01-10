import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/utils/static_colors/static_colors.dart';
import '../../../../data/utils/static_style/staticstyle.dart';

class QuestionsBox extends StatelessWidget {
  const QuestionsBox({
    super.key,
    this.controller,
    required this.questionsTitle,
    required this.questionsDec,
    required this.selectIndex,
  });

  final dynamic controller;
  final String questionsTitle;
  final String questionsDec;
  final int selectIndex;

  @override
  Widget build(BuildContext context) {
    // Retrieve the showMore value from the map dynamically
    RxBool getShowMore() {
      return controller.showMoreMap[selectIndex] ?? false.obs;  // Default to false if not found
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Toggle the appropriate section based on selectIndex
              controller.toggleMore(selectIndex);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Obx(
                    () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      questionsTitle,
                      style: StaticStyle.style(
                        14,
                        StaticColors.textPrColor,
                        FontWeight.w500,
                      ),
                    ),
                    Icon(
                      getShowMore().value
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Obx(() {
            if (getShowMore().value) {
              return Text(
                questionsDec,
                style: StaticStyle.style(
                  13.9,
                  StaticColors.textSeColor,
                  FontWeight.w400,
                ),
              ).paddingSymmetric(horizontal:25);
            } else {
              return const SizedBox();  // Return an empty box if not expanded
            }
          }),
        ],
      ),
    );
  }
}
