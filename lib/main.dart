import 'package:code_library/moduls/homepage/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Code Library",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
