import 'package:bus_schedules_np/models/bus_model.dart';
import 'package:bus_schedules_np/screens/home_screen/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constans.dart';

class BusItemButton extends StatelessWidget {
  final int item;
  const BusItemButton({
    Key key, this.item,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var initTripFromHomeController = Get.put(HomeController());
    return InkWell(
      onTap: () {
        _buildShowModalBottomSheet(context, item, initTripFromHomeController);
      },
      child: Container(
        margin: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: item % 2 == 0  ? Colors.orangeAccent : Colors.redAccent,
          shape: BoxShape.circle,
        ),
        child: Text(
          schedules[item].title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Future _buildShowModalBottomSheet(BuildContext context, int item, HomeController initTrip) {
    final busItem = schedules[item];
    return showModalBottomSheet(
        context: context,
        builder: (ctx) => Container(
          decoration: BoxDecoration(
            color: kDefaultBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(22),
              topRight: const Radius.circular(22),
            ),
          ),
          child: Container(
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
            ),
            child: ListView.builder(
              itemCount: busItem.trip.length,
              itemBuilder: (ctx, inx) => ListTile(
                onTap: () {
                  initTrip.initTrip(inx, busItem.trip[inx]);
                  Get.toNamed("/schedule");
                },
                title: Text(
                  busItem.trip[inx],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}
