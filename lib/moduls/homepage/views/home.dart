import 'package:code_library/moduls/api/api_screen.dart';
import 'package:code_library/moduls/dropdowntextfield/views/dropdown_screen.dart';
import 'package:code_library/moduls/finca%20registation/finca_signup_screem.dart';
import 'package:code_library/moduls/google%20map/map_screen.dart';
import 'package:code_library/moduls/homepage/views/home_title_text.dart';
import 'package:code_library/moduls/theme/theme_screen.dart';
import 'package:code_library/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Filter search/With getx/getx_search_page.dart';
import '../../Filter search/withOut getx/filter_search_screen.dart';
import '../../Textfield/views/textfield_screen.dart';
import '../../audio player/audio_screen.dart';
import '../../custom drop down/show_button.dart';
import '../../dropdowntextfield/views/single_item_dropdown.dart';
import '../../favourite card/views/favourite_screen.dart';
import '../../responsive card package/responsive_card.dart';
import '../../tabar & drawer/tabbar_drawer.dart';

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
              text: "Textfield screen",
              ontap: () {
                Get.to(() => const TextfieldScreen());
              },
            ),
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
              text: "Filter search getx",
              ontap: () {
                Get.to(() => PropertyListScreen2());
              },
            ),
            CustomButton(
              text: "Favourite item",
              ontap: () {
                Get.to(() => ItemListScreen());
              },
            ),
            CustomButton(
              text: "api integration",
              ontap: () {
                Get.to(() => ApiScreen());
              },
            ),
            CustomButton(
              text: "Audio Player",
              ontap: () {
                Get.to(() => AudioPlayerScreen());
              },
            ),
            CustomButton(
              text: "Google map",
              ontap: () {
                Get.to(() => MapScreen());
              },
            ),
            CustomButton(
              text: "Theme",
              ontap: () {
                Get.to(() => ThemeScreen());
              },
            ),
            CustomButton(
              text: "Finca Register",
              ontap: () {
                Get.to(() => RegistrationScreen());
              },
            ),
            CustomButton(
              text: "Tabbar drawer responsive",
              ontap: () {
                Get.to(() => TabbarDrawer());
              },
            ),
            CustomButton(
              text: "Responsive Card Package",
              ontap: () {
                Get.to(() => ResponsiveCardPackage(
                      title: 'kljdfkja',
                    ));
              },
            ),
            CustomButton(
              text: "Dropdown",
              ontap: () {
                Get.to(() => DropdownButtonValidationExample());
              },
            ),
          ],
        ),
      ),
    );
  }
}
