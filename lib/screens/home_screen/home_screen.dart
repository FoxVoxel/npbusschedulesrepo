import 'package:bus_schedules_np/screens/home_screen/widgets/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constans.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R().switchColor,
      body: Body(),
    );
  }
}
