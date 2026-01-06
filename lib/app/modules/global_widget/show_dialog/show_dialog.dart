import 'package:estimatorapp/app/data/utils/static_img/static_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_style/staticstyle.dart';
import '../../../routes/app_pages.dart';
import '../custom_button/custom_button.dart'; // Make sure this is imported
class ShowDialog {
  static Future<void> showCustomDialog(
      BuildContext context, {
        String heading = '',
        String fBtnTitle = '',
        String seBtnTitle = '',
        bool isSuccess = false,
        bool onlySuccesMsg = false,
         VoidCallback? onTap1,// onTap2 is nullable (optional)
        required VoidCallback onTap2,
        String ?lotiImg,
      }) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          heading,
          style: StaticStyle.style(
            20, // Font size
            StaticColors.textPrColor, // Text color
            FontWeight.w700, // Font weight
          ),
          textAlign: TextAlign.center,
        ),
        content: Container(
          margin: EdgeInsets.only(top: 20), // Adjusted top margin
          height: 220, // Responsive height for the dialog content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // Align content to the bottom
            mainAxisSize: MainAxisSize.min, // Ensures minimal height based on children
            children: [
              // Conditional rendering for success message
              if (isSuccess) ...[
                Lottie.asset(
                 lotiImg ?? StaticImg.success,
                  width: 120,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 30), // Space after success animation
              ],
              // Conditional rendering of buttons
              if (isSuccess) ...[
                Row(
                  children: [
                    if (!onlySuccesMsg)
                      Expanded(
                        child: CustomButton(
                          borderRadius: 10,
                          bgColor: StaticColors.whiteColor,
                          fColor: StaticColors.textPrColor,
                          onTap: onTap1 ?? () {}, // Use provided callback
                          title: fBtnTitle, // Use dynamic title
                          fSize: 14,
                          fWight: FontWeight.w500,
                          height: 48, // Responsive height
                        ),
                      ),
                    SizedBox(width: 10), // Space between buttons
                    Expanded(
                      child: CustomButton(
                        borderRadius: 10,
                        isUploadBtn: true,
                        borderWidth: 2,
                        borderColor: StaticColors.grayColor,
                        bgColor: StaticColors.btnThColor,
                        fColor: StaticColors.whiteColor,
                        onTap: onTap2 , // If onTap2 is null, use a no-op function
                        title: seBtnTitle, // Use dynamic title
                        fSize: 14,
                        fWight: FontWeight.w500,
                        height: 50, // Responsive height
                      ),
                    ),
                  ],
                ),
              ] else ...[
                // Standard buttons when isSuccess is false
                CustomButton(
                  width: MediaQuery.of(context).size.width,
                  borderRadius: 10,
                  bgColor: StaticColors.btnThColor,
                  fColor: StaticColors.whiteColor,
                  onTap: onTap1 ?? () {}, // Use provided callback
                  title: fBtnTitle, // Use dynamic title
                  fSize: 16,
                  fWight: FontWeight.w500,
                  height: 48,
                ),
                SizedBox(height: 20), // Space between buttons
                CustomButton(
                  width: MediaQuery.of(context).size.width,
                  borderRadius: 10,
                  isUploadBtn: true,
                  borderWidth: 2,
                  borderColor: StaticColors.grayColor,
                  bgColor: StaticColors.whiteColor,
                  fColor: StaticColors.textPrColor,
                  onTap: onTap2, // If onTap2 is null, use a no-op function
                  title: seBtnTitle, // Use dynamic title
                  fSize: 16,
                  fWight: FontWeight.w500,
                  height: 50,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

