import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/utils/static_style/staticstyle.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    this.height = 48,
    this.width = double.infinity,
    required this.bgColor,
    required this.title,
    this.fSize = 16,
    required this.fColor,
    this.fWight = FontWeight.w500,
    this.isLeftIcon = false,
    this.borderRadius = 9,
    this.leftIconSize = 20,
    this.leftIcon,
    this.isUploadBtn = false,
    this.borderWidth,
    this.borderColor,
    this.iconColors,
    this.iconMedelGapTex = 10,
    this.isIconColor = false,
  });
  final VoidCallback onTap;
  final double height;
  final double width;
  final double? borderWidth;
  final double leftIconSize;
  final int bgColor;
  final String title;
  final Color? iconColors;
  final String? leftIcon;
  final double fSize;
  final double borderRadius;
  final int fColor;
  final int? borderColor;
  final FontWeight fWight;
  final bool isLeftIcon;
  final bool isUploadBtn;
  final bool isIconColor;
  final double iconMedelGapTex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(bgColor),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            isUploadBtn
                ? BoxShadow()
                : BoxShadow(
                    color: Colors.black12,
                    blurRadius: 7.3,
                    spreadRadius: 0.0,
                    offset: Offset(0, 4),
                    blurStyle: BlurStyle.solid,
                  ),
          ],
          border: isUploadBtn
              ? Border.all(color: Color(borderColor!), width: borderWidth!)
              : null,
        ),
        child: Center(
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isLeftIcon && leftIcon != null
                    ? Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          leftIcon!,
                          width: leftIconSize,
                          colorFilter: isIconColor
                              ? null
                              : ColorFilter.mode(
                            iconColors ?? Colors.white, // Default to black if `iconColors` is null
                            BlendMode.srcIn,
                          ),
                        ),

                )
                    : SizedBox(width: 0.w),

                SizedBox(width: iconMedelGapTex.w),
                Text(title, style: StaticStyle.style(fSize, fColor, fWight)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
