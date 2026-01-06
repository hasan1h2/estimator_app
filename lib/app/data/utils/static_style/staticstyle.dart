import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StaticStyle {
  static TextStyle style(double? fontSize, int color, FontWeight? fontWeight) {
    return TextStyle(
      fontSize: fontSize,
      color: Color(color),
      fontWeight: fontWeight,
    );
  }
}


//
// class StaticStyle {
//   static TextStyle style({
//     required double fontSize, // Non-nullable
//     required int color, // Non-nullable
//     FontWeight? fontWeight = FontWeight.normal, // Default value for fontWeight
//   }) {
//     return TextStyle(
//       fontSize: fontSize.sp, // Automatically converts to responsive size
//       color: Color(color), // Converts color from int to Color
//       fontWeight: fontWeight, // Uses default value if null
//     );
//   }
// }
