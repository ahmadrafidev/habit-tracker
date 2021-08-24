import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
  static const routeName = '/calendar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/timer');
                },
                child: const Text(
                  "Go TO TIMER",
                  style: TextStyle(
                    fontSize: 28
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
