import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectDay = 0.obs;
  var tripLine = 0;
  var titleLine = "";

  initTrip(int initTripLine, String initTitleLine) {
    tripLine = initTripLine;
    titleLine = initTitleLine;
  }

  changeDay(int day) {
    selectDay = day as RxInt;
  }

  resetTrip() {
    tripLine = 0;
    titleLine = "";
  }
}