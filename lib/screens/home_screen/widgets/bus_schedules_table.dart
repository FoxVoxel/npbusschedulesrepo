import 'package:bus_schedules_np/models/bus_model.dart';
import 'package:bus_schedules_np/screens/home_screen/widgets/time_show.dart';
import 'package:flutter/material.dart';

import '../../../constans.dart';
import 'bus_item_button.dart';

class BusSchedulesTable extends StatelessWidget {
  const BusSchedulesTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  horizontal: kPaddingDefault * 1.5,
                  vertical: kPaddingDefault
              ),
              decoration: BoxDecoration(),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    child: TimeShow(),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20
                      ),
                      decoration: BoxDecoration(),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemCount: schedules.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4
                        ),
                        itemBuilder: (ctx, inx) => BusItemButton(
                          item: inx
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
