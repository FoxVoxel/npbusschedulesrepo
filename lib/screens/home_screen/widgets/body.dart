import 'package:bus_schedules_np/screens/home_screen/widgets/bus_item.dart';
import 'package:bus_schedules_np/screens/home_screen/widgets/main_head.dart';
import 'package:flutter/material.dart';

import 'package:bus_schedules_np/models/bus_model.dart';
import 'package:bus_schedules_np/models/utils/appFuncs.dart';

import '../../../constans.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentInt = dateNowInNumber();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            MainHead(),
            _buildDayOnWeek(),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: R().lightGrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(44),
                        topRight: Radius.circular(44),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: R().defPadding * 2,
                      vertical: R().defPadding,
                    ),
                    child: Text(
                        "Все автобусы"
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: R().defPadding,
                      vertical: R().defPadding * 2,
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: schedules.length,
                      itemBuilder: (ctx, inx) => BusItem(
                        item: inx,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDayOnWeek() {
    return Container(
            height: 90,
            padding: EdgeInsets.symmetric(
              vertical: R().defPadding,
              horizontal: R().defPadding/2,
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (ctx, inx) => InkWell(
                borderRadius: BorderRadius.circular(15),
                radius: 22,
                onTap: () {
                  setState(() {
                    currentInt = inx;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: 15,
                      right: inx == daysOnWeek.length-1 ? 15 : 0
                  ),
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentInt == inx ? Colors.redAccent : Colors.transparent,
                    border: Border.all(
                      color: currentInt == inx ? Colors.transparent : Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    daysOnWeek[inx].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
