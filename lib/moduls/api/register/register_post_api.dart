import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RegisterPostApi extends StatefulWidget {
  const RegisterPostApi({super.key});

  @override
  State<RegisterPostApi> createState() => _RegisterPostApiState();
}

class _RegisterPostApiState extends State<RegisterPostApi> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void postRegister(String email, password) async {
    try {
      Response response = await post(
          Uri.parse("https://reqres.in/api/register"),
          body: {"email": email, "password": password});

      if (response.statusCode == 200) {
        print("Successfully register");
      } else {
        print("Faild register");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "email", prefixIcon: Icon(Icons.email)),
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "password", prefixIcon: Icon(Icons.password)),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    postRegister(emailController.text.toString(),
                        passwordController.text.toString());
                  },
                  child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
