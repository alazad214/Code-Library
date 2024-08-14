import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void postRegister(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("https://reqres.in/api/register"),
        body: {"email": email, "password": password},
      );

      if (response.statusCode == 200) {
        print("Successfully registered");
      } else {
        print("Failed to register");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
