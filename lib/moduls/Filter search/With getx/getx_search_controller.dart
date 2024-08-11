import 'package:get/get.dart';

class PropertyController extends GetxController {
  var myItem = <Map<String, dynamic>>[
    {"Id": "1", "name": "azad", "title": "azad is a goog boy"},
    {"Id": "2", "name": "rafi", "title": "azad is a goog boy"},
    {"Id": "3", "name": "kabul", "title": "azad is a goog boy"},
    {"Id": "4", "name": "samim", "title": "azad is a goog boy"},
    {"Id": "5", "name": "zihad", "title": "azad is a goog boy"},
    {"Id": "6", "name": "rofik", "title": "azad is a goog boy"},
    {"Id": "7", "name": "Azad", "title": "azad is a goog boy"},
    {"Id": "8", "name": "Azad", "title": "azad is a goog boy"},
  ].obs;

  var foundItem = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    foundItem.value = myItem;
    super.onInit();
  }

  void runFilter(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      foundItem.value = myItem;
    } else {
      foundItem.value = myItem
          .where((user) => user["name"]
          .toLowerCase()
          .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
  }
}
