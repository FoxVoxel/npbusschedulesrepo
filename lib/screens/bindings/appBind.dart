import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppBinds extends Bindings {
  @override
  void dependencies() {
      var homeController = Get.put(CupertinoIcons.home);
  }

}