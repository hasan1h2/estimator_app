import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomAppBar({super.key, this.title = "", required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: onTap, icon: Icon(Icons.arrow_back, size: 30)),
        SizedBox(width: 110.w),
        Text(title),
      ],
    );
  }

  // @override
  // Size get preferredSize => Size.fromHeight(kToolbarHeight); // Height of the AppBar implements PreferredSizeWidget
}
