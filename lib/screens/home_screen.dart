import 'package:flutter/material.dart';
import 'package:habittracker/screens/calendar_screen.dart';
import 'package:habittracker/screens/tabs_screen.dart';
import 'package:habittracker/screens/timer_screen.dart';
import './tabs_screen.dart';

import '../widget/chart.dart';
import '../widget/todo_list_main.dart';
import '../widget/chart_bar.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Hi, Rafi',
          style: TextStyle(
            fontFamily: 'DMSans',
            fontSize: 28,
          ),
        ),
      ),
      body: const Center(child: Text('this is will be the home screen')),
    );
  }
}
