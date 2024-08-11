import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dropdown_controller.dart';
import '../utils/dropdown_widgets.dart';

class SingleItemDropdown extends StatelessWidget {
  SingleItemDropdown({super.key});

  final DropdownController _controller = Get.put(DropdownController());

  void _printSelectedValue() {
    if (_controller.selectedValue.value != null) {
      print('Selected Value: ${_controller.selectedValue.value}');
    } else {
      print('No value selected');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Item Dropdown"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Form(
            child: Column(
              children: [
                DropdownWidget(
                  dropDownList:  [

                    DropDownValueModel(name: 'azad', value: "azad"),
                    DropDownValueModel(name: 'rafi', value: "rafi"),
                    DropDownValueModel(name: 'name3', value: "value3"),
                    DropDownValueModel(name: 'name4', value: "value4"),
                    DropDownValueModel(name: 'name5', value: "value5"),
                  ],
                  hintText: "Select an item",
                  controller: _controller,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _printSelectedValue,
                  child: const Text('Print Selected Value'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
