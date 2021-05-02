import 'package:flutter/material.dart';

import '../../../constans.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kPaddingDefault,
          vertical: kPaddingDefault/2
      ),
      padding: EdgeInsets.symmetric(
          vertical: kPaddingDefault/10,
          horizontal: kPaddingDefault
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(44),
      ),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {}
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            width: 2,
            height: 25,
            color: Colors.white,
          ),
          Flexible(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: "Найти остановку",
                hintStyle: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.support,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
