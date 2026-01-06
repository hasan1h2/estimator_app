import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomUploadFileBox extends StatelessWidget {
  const CustomUploadFileBox({
    super.key,
    this.onTap,
    this.height = 80,
    this.width = 80,
    required this.bgColor,
    this.borderColor,
    required this.icon,
    this.borderWidth = 1,
    this.pd = 24,
   this.borderRadius=10,
  });
  final VoidCallback? onTap;
  final double height;
  final double width;
  final double borderRadius;
  final double borderWidth;
  final double pd;
  final int bgColor;
  final int? borderColor;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(bgColor),
        border: Border.all(color: Color(borderColor!), width: borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.all(pd),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
