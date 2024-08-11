import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_search_controller.dart';

class PropertyListScreen2 extends StatelessWidget {
  PropertyListScreen2({super.key});

  final controller = Get.put(PropertyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter Search getx'),
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
                controller.runFilter(value);
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.foundItem.length,
                  itemBuilder: (context, index) {
                    return Card(
                      key: ValueKey(controller.foundItem[index]["Id"]),
                      child: ListTile(
                        leading: Text(controller.foundItem[index]["Id"]),
                        title: Text(controller.foundItem[index]["name"]),
                        subtitle: Text(controller.foundItem[index]["title"]),
                        onTap: () {
                          // Navigate to details or perform other actions
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
