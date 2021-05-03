import 'package:flutter/material.dart';

import '../../../constans.dart';

class MainHead extends StatelessWidget {
  const MainHead({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: R().defPadding,
        horizontal: R().defPadding/2,
      ),
      child: Row(
        children: [
          Text(
            "Расписанние",
            style: Theme.of(context).textTheme.headline5
                .copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          )
        ],
      ),
    );
  }
}