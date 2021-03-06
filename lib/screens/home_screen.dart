import 'package:flutter/material.dart';
import 'package:habittracker/models/todo.dart';

import '../widget/todo_list.dart';
import '../widget/new_todo.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Todo> _userTodo = [];

  void _deleteTodo(String id) {
    setState(() {
      _userTodo.removeWhere((ctx) => ctx.id == id);
    });
  }

  void _addNewTodo(String tdName, DateTime chosenDate) {
    final newTodo = Todo(
      id: DateTime.now().toString(),
      name: tdName,
      date: chosenDate,
    );
    setState(() {
      _userTodo.add(newTodo);
    });
  }

  void _startAddNewTodo(BuildContext ctx) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: ctx,
        isDismissible: true,
        enableDrag: true,
        builder: (_) {
          return GestureDetector(
            child: NewTodo(_addNewTodo),
            onTap: () {},
            behavior: HitTestBehavior.opaque,
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          centerTitle: true,
          title: const Text(
            'Hi, Rafi',
            style: TextStyle(
              fontFamily: 'DMSans',
              fontSize: 28,
              color: Colors.blue,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ToDoList(_userTodo, _deleteTodo),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          elevation: 2,
          child: const Icon(Icons.add),
          onPressed: () => _startAddNewTodo(context),
          backgroundColor: const Color.fromRGBO(11, 128, 236, 1),
        )
      );
  }
}
