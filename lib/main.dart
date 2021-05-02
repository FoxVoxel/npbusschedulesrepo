import 'package:bus_schedules_np/constans.dart';
import 'package:bus_schedules_np/screens/bindings/appBind.dart';
import 'package:bus_schedules_np/screens/home_screen/home_screen.dart';
import 'package:bus_schedules_np/screens/schedule_screen/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AppInit());

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Расписание Новополоцких автобусов",
      theme: ThemeData(
        backgroundColor: kSwitchColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        canvasColor: Colors.transparent,
      ),
      getPages: [
        GetPage(name: "/home", page: () => HomeScreen(), binding: AppBinds()),
        GetPage(name: "/schedule", page: () => ScheduleScreen(), binding: AppBinds()),
      ],
      initialRoute: "/home",
    );
  }
}
