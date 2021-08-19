import 'package:flutter/material.dart';

import 'screens/starting_page_screen.dart';
import 'screens/home_screen.dart';
import 'screens/calendar_screen.dart';
import 'screens/timer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'DMSans'
      ),
      title: 'Habit Tracker',
      home: StartingPage(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        CalendarScreen.routeName: (ctx) => CalendarScreen(),
        TimerScreen.routeName: (ctx) => TimerScreen(),
      },
    );
  }
}
