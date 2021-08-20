import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = '/timer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer"),
      ),
      body: CircularCountDownTimer(
        duration: 10,
        initialDuration: 0,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 2,
        ringColor: Colors.blue,
        ringGradient: null,
        fillColor: Colors.black87,
        fillGradient: null,
      ),
    );
  }
}
