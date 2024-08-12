import 'dart:convert';

import 'package:code_library/moduls/api/Get%20Method/product_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var users = <ProductModel>[].obs;

  var url = "https://jsonplaceholder.typicode.com/posts/1/comments";

  @override
  void onInit() {
    fetchproduct();
    super.onInit();
  }

  void fetchproduct() async {
    try {
      final Response = await http.get(Uri.parse(url));

      if (Response.statusCode == 200) {
        List<dynamic> jsonresponse = json.decode(Response.body);
        users.value =
            jsonresponse.map((json) => ProductModel.fromJson(json)).toList();
      } else {
        print("Load to faild");
      }
    } catch (e) {}
  }
}
