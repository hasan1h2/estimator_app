import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onTap;

  const CustomAppBar({super.key, this.title = "", required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.all(8),
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 30,
          ),
          padding: EdgeInsets.zero,
          onPressed:onTap,
        ),
      ),
      title:  Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xff0E7A3A),
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    );

  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

// Height of the AppBar
}
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(onPressed: onTap, icon: Icon(Icons.arrow_back, size: 30)),
// SizedBox(width: 110.w),
// Text(title),
// ],
// );