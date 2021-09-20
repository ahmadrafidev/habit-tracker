import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTodo extends StatefulWidget {
  final Function addTodo;

  const NewTodo(this.addTodo);

  @override
  State<NewTodo> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  final _titleController = TextEditingController();
  DateTime? _selectedDate;

  void _submitDataHandler() {
    if (_titleController.text.isEmpty) {
      return;
    }
    final enteredTitle = _titleController.text;

    if (enteredTitle.isEmpty || _selectedDate == null) {
      return;
    }
    widget.addTodo(enteredTitle, _selectedDate);
    Navigator.of(context).pop();
  }

  void _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
                autocorrect: true,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
                // onChanged: (val) {
                //   titleInput = val;
                // },
                controller: _titleController,
                onSubmitted: (_) => _submitDataHandler()),
            SizedBox(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(_selectedDate == null
                        ? "No Date Chosen!"
                        : 'Picked Date: ${DateFormat.yMd().format(_selectedDate!)}'),
                  ),
                  TextButton(
                    onPressed: _datePicker,
                    child: const Text(
                      'Choose Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                child: const Text('Add Todo'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: _submitDataHandler),
          ],
        ),
      ),
    );
  }
}
