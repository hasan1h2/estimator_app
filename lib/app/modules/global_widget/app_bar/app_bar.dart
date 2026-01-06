import 'package:estimatorapp/app/data/utils/static_colors/static_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,  // Adjust text size here
          color: Color(StaticColors.textPrColor),  // Title color
          fontWeight: FontWeight.w700,  // Font weight
        ),
      ),
      centerTitle: true,  // Center the title
      backgroundColor: Color(StaticColors.whiteColor),  // AppBar background color
      elevation: 5,  // Shadow effect under the AppBar
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Height of the AppBar
}
