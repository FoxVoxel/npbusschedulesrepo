import 'package:bus_schedules_np/constans.dart';
import 'package:bus_schedules_np/models/bus_model.dart';
import 'package:bus_schedules_np/models/utils/transformTimesAndTitlesToArray.dart';
import 'package:bus_schedules_np/screens/home_screen/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tripFromHomeController = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: kSwitchColor,
      appBar: buildAppBar(tripFromHomeController, context),
      body: SafeArea(
        child: Container(
          child: Expanded(
            flex: 1,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: kDefaultBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(44),
                        topRight: Radius.circular(44),
                      )
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: kPaddingDefault *2,
                    vertical: kPaddingDefault*4,
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kPaddingDefault,
                      vertical: kPaddingDefault/4
                    ),
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (ctx, inx) => ListTile(
                        title: Text("Te"),
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(HomeController tripFromHomeController, BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kSwitchColor,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(Icons.arrow_back),
        color: Colors.black45,
      ),
      title: Text(
          tripFromHomeController.titleLine,
          style: Theme.of(context).textTheme.bodyText2.copyWith(),
      ),
    );
  }
}
