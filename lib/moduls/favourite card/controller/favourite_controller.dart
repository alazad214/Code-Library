import 'package:code_library/moduls/favourite%20card/utils/fav_item.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ItemController extends GetxController {
  var items = <FavItem>[
    FavItem(id: '1', name: 'Azad', title: 'Azad is a good boy'),
    FavItem(id: '2', name: 'Rafi', title: 'Rafi is a good boy'),
  ].obs;

  var favoriteItems = <FavItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFavorites();
  }

  void toggleFavorite(String id) async {
    final index = items.indexWhere((item) => item.id == id);
    if (index != -1) {
      if (items[index].isFavorite) {
        items[index].isFavorite = false;
        favoriteItems.removeWhere((item) => item.id == id);
      } else {
        items[index].isFavorite = true;
        favoriteItems.add(items[index]);
      }
      await saveFavorites();
      update(); // Notify listeners
    }
  }

  void removeFromFavorites(String id) async {
    final index = favoriteItems.indexWhere((item) => item.id == id);
    if (index != -1) {
      favoriteItems.removeAt(index);
      final itemIndex = items.indexWhere((item) => item.id == id);
      if (itemIndex != -1) {
        items[itemIndex].isFavorite = false;
      }
      await saveFavorites();
      update(); // Notify listeners
    }
  }

  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = jsonEncode(favoriteItems
        .map((item) => {
              'id': item.id,
              'name': item.name,
              'title': item.title,
              'isFavorite': item.isFavorite,
            })
        .toList());
    await prefs.setString('favorite_items', favoritesJson);
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getString('favorite_items');
    if (favoritesJson != null) {
      final List<dynamic> favoritesList = jsonDecode(favoritesJson);
      favoriteItems.value = favoritesList
          .map((itemJson) => FavItem(
                id: itemJson['id'],
                name: itemJson['name'],
                title: itemJson['title'],
                isFavorite: itemJson['isFavorite'],
              ))
          .toList();
      // Update the main items list based on favorites
      items.forEach((item) {
        if (favoriteItems.any((fav) => fav.id == item.id)) {
          item.isFavorite = true;
        }
      });
    }
  }
}
