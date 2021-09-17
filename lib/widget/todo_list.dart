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
          child: Text(
            'TODO',
          ),
          color: const Color.fromRGBO(11, 128, 236, 1),
        ),
      ],
    );
  }
}
