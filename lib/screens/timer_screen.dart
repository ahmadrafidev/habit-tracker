import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TimerScreen extends StatefulWidget {
  static const routeName = '/timer';

  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  final CountDownController _controller = CountDownController();
  bool _isStop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: const Text(
          "Pomodoro",
          style: TextStyle(
            color: Colors.blue,
              fontFamily: 'DMSans',
              fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: CircularCountDownTimer(
                duration: 1500,
                initialDuration: 0,
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.5,
                controller: _controller,
                ringColor: Colors.blue.shade400,
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
                autoStart: false,
                onComplete: () {
                  Alert(
                          context: context,
                          title: 'Done',
                          desc: "You've done a great job",
                          style: const AlertStyle(
                            isCloseButton: true,
                            isButtonVisible: false,
                            titleStyle: TextStyle(
                                color: Colors.black54, fontSize: 30.0),
                          ),
                          type: AlertType.success)
                      .show();
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 45),
                      shape: const StadiumBorder(),
                      primary: const Color.fromRGBO(11, 128, 236, 1),
                      padding: const EdgeInsets.all(10),
                      textStyle: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_isStop) {
                          _isStop = false;
                          _controller.start();
                        } else {
                          _isStop = true;
                          _controller.pause();
                        }
                      });
                    },
                    icon: Icon(_isStop ? Icons.play_arrow : Icons.pause),
                    label: Text(_isStop ? "Start" : "Stop")),
                const SizedBox(width: 7),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 45),
                      shape: const StadiumBorder(),
                      primary: const Color.fromRGBO(11, 128, 236, 1),
                      padding: const EdgeInsets.all(10),
                      textStyle: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_isStop) {
                          _isStop = false;
                          _controller.resume();
                        }
                      });
                    },
                    child: const Text("Resume")),
                const SizedBox(width: 7),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 45),
                      shape: const StadiumBorder(),
                      primary: const Color.fromRGBO(11, 128, 236, 1),
                      padding: const EdgeInsets.all(10),
                      textStyle: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_isStop || !_isStop) {
                          _controller.restart();
                          _controller.pause();
                          _isStop = true;
                        }
                      });
                    },
                    child: const Text("Cancel")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
