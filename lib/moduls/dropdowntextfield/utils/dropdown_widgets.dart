import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import '../controllers/dropdown_controller.dart';

class DropdownWidget extends StatelessWidget {
  final List<DropDownValueModel> dropDownList;
  final String hintText;
  final DropdownController controller;
  const DropdownWidget({
    Key? key,
    required this.dropDownList,
    this.hintText = "Select an option",
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: DropDownTextField(
        clearOption: true,
        enableSearch: false,
        clearIconProperty: IconProperty(color: Colors.green),
        searchTextStyle: const TextStyle(color: Colors.red),
        searchDecoration: InputDecoration(
          hintText: hintText,
        ),
        validator: (value) {
          if (value == null) {
            return "Required field";
          } else {
            return null;
          }
        },
        dropDownItemCount: dropDownList.length,
        dropDownList: dropDownList,
        onChanged: (val) {
          controller.selectedValue.value =
              val.value; // অবজার্ভেবল ভেরিয়েবল আপডেট করা
        },
      ),
    );
  }
}
