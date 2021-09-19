// ignore_for_file: sized_box_for_whitespace

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
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 400,
          child: todo.isEmpty
              ? Column(
                  children: const <Widget>[
                    Text(
                      'No TODO today. Maybe add one?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              : ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 5,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: FittedBox(
                              child: Text('\$${todo[index].name}'),
                            ),
                          ),
                        ),
                        title: Text(
                          todo[index].name!,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        subtitle: Text(
                          DateFormat.yMMMd().format(todo[index].date!),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          color: Theme.of(context).errorColor,
                          onPressed: () => deleteTodo(todo[index].id),
                        ),
                      ),
                    );
                  },
                  itemCount: todo.length,
                ),
        ),
      ],
    );
  }
}
