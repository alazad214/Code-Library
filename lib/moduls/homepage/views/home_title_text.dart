import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTitleText extends StatelessWidget {
  const HomeTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Text(
        "Some stories of my coding life are presented through this project. Here is \na collection of projects that showcase my skills in Flutter, Dart, Firebase, \nRest API, Getx, Local Storage, Responsive Design, Payment gateway, admob...",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
