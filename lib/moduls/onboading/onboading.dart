import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboading extends StatefulWidget {
  Onboading({super.key});

  @override
  State<Onboading> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboading> {
  Future addData() async {
    final prefs = await SharedPreferences.getInstance();

    var firstTimeAdd = prefs.setString("Value", "Data");
    print(firstTimeAdd);
  }

  Future getData() async {
    final prefs = await SharedPreferences.getInstance();

    var firstTimeAdd = prefs.getString('Value');
    print(firstTimeAdd);
  }

  @override
  void initState() {
    addData();
    getData();
    ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Onboading Screen"),
      ),
    );
  }
}
