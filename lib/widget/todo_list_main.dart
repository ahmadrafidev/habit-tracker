
// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/todo.dart';

abstract class TodoListMain extends StatelessWidget {
  final List<Todo> todo;
  final Function deleteTodo;

  const TodoListMain({Key? key, required this.todo, required this.deleteTodo}) : super(key: key);

  ToDoListMain(todo, deleteTodo);

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 400,
          child: todo.isEmpty
              ? Column(
                  children: <Widget>[
                    const Text(
                      'No TODO today. Maybe add one?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                        height: 100,
                        child: Image.asset(
                          'assets/images/waiting.png',
                          fit: BoxFit.cover,
                        )),
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
        );
  }
}