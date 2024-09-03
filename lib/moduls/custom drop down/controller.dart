import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DropdownController extends GetxController {
  var selectedValue = Rxn<String>(); // Allows for null values
  var items = <DropdownMenuItem<String>>[].obs; //

  @override
  void onInit() {
    super.onInit();
    items.value = [];
  }
}
