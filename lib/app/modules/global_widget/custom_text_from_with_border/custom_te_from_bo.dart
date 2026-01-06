import 'package:flutter/material.dart';

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
    this.onChanged, // Ensured it's passed as CrossAxisAlignment
  });
  final String hintText;
  final String lableText;
  final String? initialValue;
  final IconData? icon;
  final int? iconColor;
  final int? maxLines;
  final int borderColor;
  final IconData? iconData;
  final ValueChanged<dynamic>? onChanged;
  final bool prefixIcon;
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
            : Text(
                lableText,
                style: StaticStyle.style(
                  14, // Font size
                  StaticColors.textPrColor, // Text color for the label
                  FontWeight.w500, // Font weight
                ),
              ),
        isLableText ? SizedBox(height: 0) : SizedBox(height: 5),
        TextFormField(
          onChanged: onChanged,
          initialValue: initialValue,
          readOnly: readOnly,
          maxLines: maxLines ?? 1,
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
                : null,

            // Show icon if passed
          ),
        ),
      ],
    );
  }
}
