import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final onchanged;
  const Button1({super.key, this.onchanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15.0)),
      child: TextFormField(
        decoration: const InputDecoration(
            suffixIcon: Icon(Icons.location_on_outlined),
            hintText: "Search location..",
            border: InputBorder.none),
        onChanged: onchanged,
      ),
    );
  }
}
