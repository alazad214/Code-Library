import 'package:code_library/moduls/Textfield/widgets/button1.dart';
import 'package:code_library/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class TextfieldScreen extends StatelessWidget {
  const TextfieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "TextField Screen"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: ListView(
          children: const [Button1()],
        ),
      ),
    );
  }
}
