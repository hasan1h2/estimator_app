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
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => controller.toggleMore(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      questionsTitle,
                      style: StaticStyle.style(
                        12,
                        StaticColors.textPrColor,
                        FontWeight.w500,
                      ),
                    ),
                    Icon(
                      controller.showMore.value
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
              ),
            ),
          ),
      
          Obx(
            () => controller.showMore.value
                ? Text(
                  questionsDec,
                  style: StaticStyle.style(
                    11.9,
                    StaticColors.grayColor,
                    FontWeight.w400,
                  ),
                )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
