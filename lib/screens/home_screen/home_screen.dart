import 'package:bus_schedules_np/constans.dart';
import 'package:bus_schedules_np/screens/home_screen/widgets/bus_schedules_table.dart';
import 'package:bus_schedules_np/screens/home_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> tabs = <String>["В данный момент", "Рассписание"];
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSwitchColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBar(),
            SizedBox(
              height: 10,
            ),
            BusSchedulesTable(),
          ],
        ),
      ),
    );
  }
}
