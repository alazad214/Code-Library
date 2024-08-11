import 'package:code_library/moduls/favourite%20card/utils/fav_item.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  var items = <FavItem>[
    FavItem(id: '1', name: 'Azad', title: 'Azad is a good boy'),
    FavItem(id: '2', name: 'Rafi', title: 'Rafi is a good boy'),
    // Add more items as needed
  ].obs;

  var favoriteItems = <FavItem>[].obs; // Separate list for favorite items

  void toggleFavorite(String id) {
    final index = items.indexWhere((item) => item.id == id);
    if (index != -1) {
      if (items[index].isFavorite) {
        items[index].isFavorite = false;
        favoriteItems.removeWhere((item) => item.id == id);
      } else {
        items[index].isFavorite = true;
        favoriteItems.add(items[index]);
      }
      update(); // Notify listeners
    }
  }

  void removeFromFavorites(String id) {
    final index = favoriteItems.indexWhere((item) => item.id == id);
    if (index != -1) {
      favoriteItems.removeAt(index);
      final itemIndex = items.indexWhere((item) => item.id == id);
      if (itemIndex != -1) {
        items[itemIndex].isFavorite = false;
      }
      update(); // Notify listeners
    }
  }
}
