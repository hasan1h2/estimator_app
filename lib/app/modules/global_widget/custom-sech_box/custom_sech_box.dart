import 'package:flutter/material.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class CustomSechBox extends StatelessWidget {
  const CustomSechBox({
    super.key,
    this.hintTextSiz = 10,
    this.mainController,
    this.validator,
  });
  final double hintTextSiz;
  final TextEditingController?
  mainController; // Explicitly use TextEditingController
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mainController,
      validator: validator,
      decoration: InputDecoration(
        hintText: StaticString.searchCus,
        hintStyle: StaticStyle.style(
          hintTextSiz,
          StaticColors.whiteDarker,
          FontWeight.w300,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Color(StaticColors.grayColor),
          ),
        ),
        fillColor: Color(StaticColors.whiteColor),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Color(StaticColors.grayColor),
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Color(StaticColors.grayColor),
        ), // Using prefixIcon to show the icon
      ),
    );
  }
}
