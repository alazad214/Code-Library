import 'package:flutter/material.dart';

class PropertyListScreen extends StatefulWidget {
  const PropertyListScreen({super.key});

  @override
  State<PropertyListScreen> createState() => _PropertyListScreenState();
}

class _PropertyListScreenState extends State<PropertyListScreen> {
  List<Map<String, dynamic>> myItem = [
    {"Id": "1", "name": "azad", "title": "azad is a goog boy"},
    {"Id": "2", "name": "rafi", "title": "azad is a goog boy"},
    {"Id": "3", "name": "kabul", "title": "azad is a goog boy"},
    {"Id": "4", "name": "samim", "title": "azad is a goog boy"},
    {"Id": "5", "name": "zihad", "title": "azad is a goog boy"},
    {"Id": "6", "name": "rofik", "title": "azad is a goog boy"},
    {"Id": "7", "name": "Azad", "title": "azad is a goog boy"},
    {"Id": "8", "name": "Azad", "title": "azad is a goog boy"},
  ];

  List<Map<String, dynamic>> foundItem = [];
  @override
  void initState() {
    foundItem = myItem;
    super.initState();
  }

  void runFilter(String enteredKeyboard) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyboard.isEmpty) {
      results = myItem;
    } else {
      results = myItem
          .where((user) => user["name"]
              .toLowerCase()
              .contains(enteredKeyboard.toLowerCase()))
          .toList();
    }
    setState(() {
      foundItem = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search by title',
              ),
              onChanged: (value) {
                runFilter(value);
              },
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
              itemCount: foundItem.length,
              itemBuilder: (context, index) {
                return Card(
                  key: ValueKey(foundItem[index]["Id"]),
                  child: ListTile(
                    leading: Text(foundItem[index]["Id"]),
                    title: Text(foundItem[index]["name"]),
                    subtitle: Text(foundItem[index]["title"]),
                    onTap: () {
                      // Navigate to details or perform other actions
                    },
                  ),
                );
              },
            ),
          )),
        ],
      ),
    );
  }
}
