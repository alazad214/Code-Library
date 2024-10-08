import 'package:code_library/moduls/api/Get%20Method/product_screen.dart';
import 'package:code_library/moduls/api/post_auth/login_post_api.dart';
import 'package:code_library/moduls/api/post_auth/register_post_api.dart';
import 'package:code_library/widgets/custom_appbar.dart';
import 'package:code_library/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "API Screen"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: ListView(
          children: [
            CustomButton(
              text: "get products",
              ontap: () => Get.to(() => ProductScreen()),
            ),
            CustomButton(
              text: "register with api",
              ontap: () => Get.to(() => RegisterPostApi()),
            ),
            CustomButton(
              text: "login with api",
              ontap: () => Get.to(() => LoginPostApi()),
            ),
          ],
        ),
      ),
    );
  }
}
