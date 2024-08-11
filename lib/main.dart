import 'package:code_library/moduls/homepage/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'moduls/provider/controller/provider_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => CounterModel()), // Provider model
      ],
      child: const GetMaterialApp(
        title: "Code Library",
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
