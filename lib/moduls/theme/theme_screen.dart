import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme_controller.dart';

class ThemeScreen extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Demo'),
        actions: [
          IconButton(
              onPressed: () {
                themeController.toggleTheme();
              },
              icon: Icon(
                themeController.isDark.value
                    ? Icons.dark_mode
                    : Icons.light_mode,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
