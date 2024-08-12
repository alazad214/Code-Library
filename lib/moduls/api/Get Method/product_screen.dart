import 'package:code_library/moduls/api/Get%20Method/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get products"),
      ),
      body: Obx(() {
        if (controller.users.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              var user = controller.users[index];
              return ListTile(
                title: Text(user.name.toString()),
                subtitle: Text(user.email.toString()),
              );
            },
          );
        }
      }),
    );
  }
}
