import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectTabNumber = 1;

  changeTab() {
    if(selectTabNumber == 1) {
      selectTabNumber--;
    } else {
      selectTabNumber++;
    }
  }
}