import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      titleSpacing: 0,
      backgroundColor: Colors.blueAccent,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(60.0); // height of the custom app bar
}
