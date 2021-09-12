// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/todo.dart';

class ToDoList extends StatelessWidget {
  final List<Todo> todo;
  final Function deleteTodo;

  ToDoList(
    this.todo,
    this.deleteTodo
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 370,
          child: todo.isEmpty 
            ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: const Color.fromRGBO(11, 128, 236, 1),
                textStyle: const TextStyle(
                  fontFamily: 'DMSans',
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
              ),
              onPressed: (){}, 
              child: const Text(
                'TODO',
                )
              )
            : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card (
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
                          child: Text('\$${todo[index].date}'),
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
                       icon: Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                      onPressed: () => deleteTodo(todo[index].id),
                    ),
                  ),
                );
              }
            ),
        ),
      ],
    );
  }
}
