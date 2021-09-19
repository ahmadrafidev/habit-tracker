import 'package:flutter/material.dart';
import 'package:habittracker/screens/tabs_screen.dart';
import 'screens/starting_page_screen.dart';
import 'screens/home_screen.dart';
import 'screens/calendar_screen.dart';
import 'screens/timer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'DMSans'
      ),
      title: 'Habit Tracker',
      home: StartingPage(),
      routes: {
        TabsScreen.routeName : (ctx) => const TabsScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        CalendarScreen.routeName: (ctx) => const CalendarScreen(),
        TimerScreen.routeName: (ctx) => const TimerScreen(),
      },
    );
  }
}
