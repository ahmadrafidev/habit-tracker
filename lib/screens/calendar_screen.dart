import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class CalendarScreen extends StatefulWidget {
  static const routeName = '/calendar';

  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final today = DateTime.now();
  get firstDay => DateTime(today.year, today.month - 12, today.day);
  get lastDay => DateTime(today.year, today.month + 12, today.day);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(11, 128, 236, 1),
        centerTitle: true,
        title: const Text(
          "Calendar",
          style: TextStyle(
            fontFamily: 'DMSans',
            fontSize: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TableCalendar(
                firstDay: firstDay,
                lastDay: lastDay,
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                locale: 'en-US',
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                }
                ),

          ],
        ),
      ),
    );
  }
}
