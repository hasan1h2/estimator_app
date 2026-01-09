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
<<<<<<< HEAD

=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
  final dynamic controller;
  final String questionsTitle;
  final String questionsDec;
  final int selectIndex;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // Retrieve the showMore value from the map dynamically
    RxBool getShowMore() {
      return controller.showMoreMap[selectIndex] ?? false.obs;  // Default to false if not found
    }

=======
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
<<<<<<< HEAD
            onTap: () {
              // Toggle the appropriate section based on selectIndex
              controller.toggleMore(selectIndex);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Obx(
                    () => Row(
=======
            onTap: () => controller.toggleMore(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Obx(
                () => Row(
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
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
<<<<<<< HEAD
                      getShowMore().value
=======
                      controller.showMore.value
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
              ),
            ),
          ),
<<<<<<< HEAD

          Obx(() {
            if (getShowMore().value) {
              return Text(
                questionsDec,
                style: StaticStyle.style(
                  11.9,
                  StaticColors.grayColor,
                  FontWeight.w400,
                ),
              );
            } else {
              return const SizedBox();  // Return an empty box if not expanded
            }
          }),
=======
      
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
>>>>>>> 4c40ee6c8166c0349e54547120b470a543411840
        ],
      ),
    );
  }
}
