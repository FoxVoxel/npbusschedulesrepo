import 'package:flutter/material.dart';

import '../../../constans.dart';

class TimeShow extends StatelessWidget {
  const TimeShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "Новополоцк",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: kPaddingDefault/4
              ),
              child: Text(
                "12:12:12",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: kPaddingDefault/4
              ),
              child: Text(
                "Понедельник, 1 мая",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}