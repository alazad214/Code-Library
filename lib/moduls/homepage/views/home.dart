import 'package:code_library/moduls/dropdowntextfield/views/dropdown_screen.dart';
import 'package:code_library/moduls/homepage/views/home_title_text.dart';
import 'package:code_library/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Filter search/withOut getx/filter_search_screen.dart';
import '../../dropdowntextfield/views/single_item_dropdown.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Library"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView(
          children: [
            const HomeTitleText(),
            CustomButton(
              text: "Dropdown Textfield",
              ontap: () {
                Get.to(() => const TestPage());
              },
            ),
            CustomButton(
              text: "Single item dropdown",
              ontap: () {
                Get.to(() => SingleItemDropdown());
              },
            ),
            CustomButton(
              text: "Filter search",
              ontap: () {
                Get.to(() => const PropertyListScreen());
              },
            ),
            CustomButton(
              text: "Filter search-getx",
              ontap: () {
                Get.to(() => const PropertyListScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
