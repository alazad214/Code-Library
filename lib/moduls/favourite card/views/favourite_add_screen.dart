import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/favourite_controller.dart';

class FavoriteItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ItemController controller = Get.put(ItemController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Items'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.favoriteItems.length,
          itemBuilder: (context, index) {
            final item = controller.favoriteItems[index];
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(item.name),
                subtitle: Text(item.title),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    controller.removeFromFavorites(item.id);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
