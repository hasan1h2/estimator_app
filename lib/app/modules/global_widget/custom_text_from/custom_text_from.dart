import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:estimatorapp/app/data/utils/static_style/staticstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFrom extends StatelessWidget {
  const CustomTextFrom({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    required this.iconColor,
    required this.borderColor,
    required this.borderWidth,
    this.isPass = false,
    this.controller,
    this.obscureText = false,
    this.mainController,
    this.validator,  this.isConPass= false,
  });

  final String hintText;
  final IconData suffixIcon;
  final int iconColor;
  final int borderColor;
  final double borderWidth;
  final bool isPass;
  final bool isConPass;
  final dynamic controller;  // Used for toggling password visibility
  final bool obscureText;   // Determines if the text field should be obscured
  final TextEditingController? mainController;  // The controller for the text field
  final FormFieldValidator? validator;  // Validation logic for the field

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mainController,
      validator: validator,
      obscureText: isPass ? obscureText : false,  // Obscure text only for password field
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: StaticStyle.style(16, StaticColors.whiteDarker, FontWeight.w400),

        // Prefix icon
        prefixIcon: Icon(suffixIcon, color: Color(iconColor), size: 18),

        // Suffix icon for password visibility toggle
        suffixIcon: isPass
            ? Obx(
              () => IconButton(
            icon:isConPass?Icon(
              color: Color(iconColor),
              size: 18,
              controller.isObscureConPass.value  // Reactive value for password visibility
                  ? Icons.visibility
                  : Icons.visibility_off,
            ): Icon(
              color: Color(iconColor),
              size: 18,
             controller.isObscure.value  // Reactive value for password visibility
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
            onPressed:isConPass? controller.toggleConPassword:controller.togglePassword,  // Toggle password visibility
          ),
        )
            : SizedBox(width: 0),  // No suffix icon for non-password fields

        // Borders for the field
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(borderColor), width: borderWidth),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(borderColor), width: borderWidth),
        ),
      ),
    );
  }
}










