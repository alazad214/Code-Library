import 'package:code_library/moduls/homepage/views/home_title_text.dart';
import 'package:code_library/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Library"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView(
          children:  const [
            HomeTitleText(),
            CustomButton(
              text: "Dropdown Textfield",
            ),

          ],
        ),
      ),
    );
  }
}
