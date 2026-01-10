import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class CustomTeFromBo extends StatelessWidget {
  const CustomTeFromBo({
    super.key,
    required this.hintText,
    this.iconColor,
    required this.borderColor,
    required this.borderWidth,
    this.mainController,
    this.icon,
    required this.fillColor,
    required this.borderRadius,
    this.lableText = "",
    required this.crossAxi,
    this.prefixIcon = false,
    this.iconData,
    this.isLableText = false,
    this.maxLines,
    this.validator,
    this.readOnly = false,
    this.initialValue,
    this.onChanged,  this.isImprotent=true, // Ensured it's passed as CrossAxisAlignment
  });

  final String hintText;
  final String lableText;
  final String? initialValue;
  final IconData? icon;
  final int? iconColor;
  final int? maxLines;
  final int borderColor;
  final IconData? iconData;
  final ValueChanged<dynamic>? onChanged; // Updated to ensure proper typing
  final bool prefixIcon;
  final bool isImprotent;
  final bool isLableText;
  final bool readOnly;
  final int fillColor;
  final CrossAxisAlignment crossAxi; // Corrected type to CrossAxisAlignment
  final double borderWidth;
  final double borderRadius;
  final TextEditingController?
  mainController; // Explicitly use TextEditingController
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxi,
      children: [
        isLableText
            ? SizedBox()
            : Row(
                children: [
                  Text(
                    lableText,
                    style: StaticStyle.style(
                      17.sp, // Font size
                      StaticColors.textPrColor, // Text color for the label
                      FontWeight.w500, // Font weight
                    ),
                  ), SizedBox(width: 5.w,),
                  isImprotent?Center(
                    child: Text(
                      '*',
                      style: StaticStyle.style(
                        20, // Font size
                        StaticColors.redColor, // Text color for the label
                        FontWeight.w500, // Font weight
                      ),
                    ).marginOnly(top: 4),
                  ):SizedBox(),
                ],
              ),
        isLableText ? SizedBox(height: 0) : SizedBox(height: 15),
        TextFormField(
          onChanged: onChanged, // Handle changes
          initialValue: initialValue, // Set initial value
          readOnly: readOnly,
          maxLines: maxLines ?? 1, // Default to 1 line if not provided
          validator: validator,
          controller: mainController, // Set controller if provided
          decoration: InputDecoration(
            hintText: hintText, // Hint text for the input field
            hintStyle: StaticStyle.style(
              16, // Font size
              StaticColors.addFromHintCo, // Hint text color
              FontWeight.w400, // Font weight
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                borderRadius,
              ), // Rounded border
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: borderWidth,
                color: Color(borderColor), // Border color when not focused
              ),
            ),
            fillColor: Color(fillColor),
            filled: true, // Background color of the text field
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: borderWidth,
                color: Color(borderColor), // Border color when focused
              ),
            ),
            prefixIcon: prefixIcon
                ? Icon(iconData, color: Color(iconColor!))
                : null, // Show icon if prefix is enabled
          ),
        ),
      ],
    );
  }
}
