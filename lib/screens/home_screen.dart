import 'package:flutter/material.dart';

import '../widget/todo_list_main.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/calendar');
                },
                child: const Text(
                  "Go to Calendar",
                  style: TextStyle(
                    fontSize: 28
                  ),
                )
              )
          ],
        ),
      ),
    );
  }
}
