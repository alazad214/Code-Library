import 'package:flutter/material.dart';

class DropdownButtonValidationExample extends StatefulWidget {
  @override
  _DropdownButtonValidationExampleState createState() => _DropdownButtonValidationExampleState();
}

class _DropdownButtonValidationExampleState extends State<DropdownButtonValidationExample> {
  String? selectedValue;
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  bool isDropdownValid = true;

  void validateDropdown() {
    if (selectedValue == null) {
      setState(() {
        isDropdownValid = false;
      });
    } else {
      setState(() {
        isDropdownValid = true;
      });
      // Perform submission or further action
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Validation Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedValue,
                    hint: Text(
                      'Select an item',
                      style: TextStyle(color: Colors.teal.shade700),
                    ),
                    icon: Icon(Icons.arrow_drop_down, color: Colors.teal),
                    isExpanded: true,
                    dropdownColor: Colors.teal.shade100,
                    style: TextStyle(color: Colors.teal.shade900, fontSize: 16),
                    items: items.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.teal.shade300),
                            SizedBox(width: 10),
                            Text(item),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                        isDropdownValid = true; // Reset validation state
                      });
                    },
                  ),
                ),
              ),
              if (!isDropdownValid)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Please select an item',
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: validateDropdown,
                child: Text('Submit'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}