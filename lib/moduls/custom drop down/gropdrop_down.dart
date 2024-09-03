import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropdown extends StatelessWidget {
  final Rxn<String> selectedValue;
  final List<DropdownMenuItem<String>> items;
  final Function(String?)? onChanged;
  final String hint;

  CustomDropdown({
    required this.selectedValue,
    required this.items,
    this.onChanged,
    this.hint = 'Select Value',
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButton<String>(
              value: selectedValue.value,
              items: items,
              onChanged: (value) {
                if (value == null || value.isEmpty) {
                  // Show error message or handle empty selection case
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please select a value')),
                  );
                } else {
                  selectedValue.value = value;
                  if (onChanged != null) {
                    onChanged!(value);
                  }
                }
              },
              underline: Container(),
              isExpanded: true,
              hint: Text(hint),
            ),
          ),
        ),
      );
    });
  }
}
