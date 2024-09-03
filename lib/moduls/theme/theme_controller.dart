import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  String themekey = "isDark";
  RxBool isDark = false.obs;

  toggleTheme() async {
    final prefe = await SharedPreferences.getInstance();
    isDark.value = !isDark.value;
    prefe.setBool(themekey, isDark.value);
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  loadTheme() async {
    final prefe = await SharedPreferences.getInstance();
    isDark.value = prefe.getBool(themekey) ?? false;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  void onInit() {
    loadTheme();
    super.onInit();
  }
}
