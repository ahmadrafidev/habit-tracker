import 'package:flutter/material.dart';
import 'package:habittracker/screens/log_in.dart';
import 'package:habittracker/screens/sign_up.dart';
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
        fontFamily: 'DMSans',
        primaryColor: const Color.fromRGBO(101, 204, 184, 1),
        secondaryHeaderColor: const Color.fromRGBO(0, 191, 255, 1),

      ),
      title: 'Habit Tracker',
      home: StartingPage(),
      routes: {
        SignupPage.routeName: (ctx) => const SignupPage(),
        LoginPage.routeName: (ctx) => const LoginPage(),
        TabsScreen.routeName : (ctx) => const TabsScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        CalendarScreen.routeName: (ctx) => const CalendarScreen(),
        TimerScreen.routeName: (ctx) => const TimerScreen(),
      },
    );
  }
}
