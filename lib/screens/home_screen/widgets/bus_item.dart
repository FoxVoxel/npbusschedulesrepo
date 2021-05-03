import 'package:flutter/material.dart';
import 'package:bus_schedules_np/models/bus_model.dart';

import '../../../constans.dart';

class BusItem extends StatelessWidget {
  final int item;
  const BusItem({
    Key key, this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(
        bottom: R().defPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.redAccent,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: R().defPadding/4,
                vertical: R().defPadding/4,
              ),
              child: Text(
                schedules[item].title,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: R().defPadding/2,
            ),
            child: Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Text(
                    schedules[item].trip.first,
                    softWrap: false,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            ),
          ),
          SizedBox(
            width: 1,
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
                horizontal: R().defPadding/4
            ),
            child: Text("8:00"),
          )
        ],
      ),
    );
  }
}