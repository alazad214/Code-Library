import 'package:code_library/moduls/homepage/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'moduls/theme/theme_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WaveToday News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode:
          themeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
      home: const Home(),
    );
  }
}
