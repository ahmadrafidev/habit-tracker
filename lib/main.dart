import 'package:flutter/material.dart';
import 'package:habittracker/screens/calendar_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker',
      home: HomeScreen(),
    );
  }
}
