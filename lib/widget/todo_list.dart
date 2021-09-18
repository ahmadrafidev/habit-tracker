import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/todo.dart';

class ToDoList extends StatelessWidget {
  final List<Todo> todo;
  final Function deleteTodo;

  const ToDoList(this.todo, this.deleteTodo);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(11, 128, 236, 1),
          ),
          width: 370,
          height: 36,
          child: const Text(
            'TODO',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'DMSans',
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
        Container(
          
        ),
      ],
    );
  }
}
