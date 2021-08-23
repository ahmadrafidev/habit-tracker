import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = '/timer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Timer"),
      ),
      body: Center(
        child: CircularCountDownTimer(
          duration: 100,
          initialDuration: 0,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.5,
          ringColor: Colors.lightBlue,
          ringGradient: null,
          fillColor: Colors.white24,
          fillGradient: null,
          backgroundColor: Colors.blueAccent,
          backgroundGradient: null,
          strokeWidth: 25.0,
          strokeCap: StrokeCap.round,
          textStyle: const TextStyle(
              fontFamily: 'DMSans',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 48),
          isReverse: true,
          isReverseAnimation: false,
          isTimerTextShown: true,
          autoStart: true,
          onStart: () {
            print("Countdown started");
          },
          onComplete: () {
            print("Countdown ended");
          },
        ),
      ),
    );
  }
}
