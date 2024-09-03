import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TabbarDrawerController extends GetxController {
  var selectedPage = 0.obs;

  void changePage(int index) {
    selectedPage.value = index;
  }
}
