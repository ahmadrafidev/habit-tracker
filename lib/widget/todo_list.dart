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
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(11, 128, 236, 1),
              ),
              width: 370,
              height: 36,
              child: const Text(
                'To-do list',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'DMSans',
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            child: Container(
              height: 550,
              child: todo.isEmpty
                  ? Column(
                      children: const <Widget>[
                        Text(
                          'Empty Here.\n Maybe add one?',
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
                      shrinkWrap: true,
                      itemCount: todo.length,
                      itemBuilder: (ctx, index) {
                        return Card(
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 5,
                          ),
                          child: ListTile(
                            title: Text(
                              todo[index].name!,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            subtitle: Text(
                              DateFormat.yMMMd().format(todo[index].date!),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete_sharp),
                              color: Theme.of(context).errorColor,
                              onPressed: () => deleteTodo(todo[index].id),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height:10),
        ],
      ),
    );
  }
}
