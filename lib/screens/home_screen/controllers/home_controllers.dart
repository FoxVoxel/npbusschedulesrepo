import 'package:get/get.dart';

class HomeController extends GetxController {
  var tripLine = 0;
  var titleLine = "";

  initTrip(int initTripLine, String initTitleLine) {
    tripLine = initTripLine;
    titleLine = initTitleLine;
  }

  resetTrip() {
    tripLine = 0;
    titleLine = "";
  }
}