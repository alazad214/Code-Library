
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/favourite_controller.dart';
import 'favorite_details_screen.dart';
import 'favourite_add_screen.dart';

class ItemListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ItemController controller = Get.put(ItemController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              Get.to(() =>
                  FavoriteItemsScreen()); // Navigate to FavoriteItemsScreen
            },
          ),
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            final item = controller.items[index];
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: InkWell(
                  onTap: (){
                    controller.toggleFavorite(item.id);
                  },
                  child: Icon(
                      item.isFavorite ? Icons.favorite : Icons.favorite_border),
                ),
                title: Text(item.name),
                subtitle: Text(item.title),

                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Get.to(() => DetailsScreen(item: item));
                  },
                ),
                onLongPress: () {
                  controller.toggleFavorite(item.id);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
